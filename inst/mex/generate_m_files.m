function generate_m_files ()
% This function automatically (re-)generates the m-files corresponding to
% "gmp_mpfr_interface.c".

  show_error = @(i, s) error (['generate_m_files: failed on input i = %d:', ...
    '\n\n%s\n\n'], i, s);

  str = fileread ('gmp_mpfr_interface.c');
  matches = regexp (str, ' case.*?\n', 'match');
  for i = 1:length (matches)
    str = matches{i};
    [tok, str] = strtok (str, ' ');  % read 'case'
    if (~ strcmp (tok, 'case'))
      show_error (i, matches{i});
    end
    [tok, str] = strtok (str, ':');  % read function number
    fcn.number = str2num (tok);
    [tok, str] = strtok (str, ' ');  % read ':'
    if (~ strcmp (tok, ':'))
      show_error (i, matches{i});
    end
    [tok, str] = strtok (str, '//');  % read 'whitespace'
    if (~ all (tok == ' '))
      show_error (i, matches{i});
    end
    [tok, str] = strtok (str, ' ');  % read '//'
    if (~ strcmp (tok, '//'))
      show_error (i, matches{i});
    end

    % Read C function definition
    [fcn.name, in_args] = strtok (str, '(');
    fcn.name = strsplit (strtrim (fcn.name));
    fcn.out_arg = strjoin (fcn.name(1:end-1), ' ');
    fcn.name = fcn.name{end};
    in_args = strtrim (in_args);
    in_args = in_args(2:end-1);  % Remove '()'
    in_args = strsplit (in_args, ', ');
    for j = 1:length (in_args)
      arg = strsplit (in_args{j});
      fcn.in_args(j).type = strjoin (arg(1:end-1), ' ');
      fcn.in_args(j).name = arg{end};
    end

    fprintf (' %3d/%3d: (%4d) %s\n', i, length (matches), fcn.number, fcn.name);

    % Patch changes to C function definition
    switch (fcn.number)
      case 217
        % int mpfr_strtofr (mpfr_t rop, const char *nptr, char **endptr, int base, mpfr_rnd_t rnd)
        % [ret, endptr] = mpfr_strtofr (rop, nptr, base, rnd);
        fcn.in_args(2).name = 'nptr';
        fcn.in_args(3) = [];
        fcn.out_arg = '[ret, endptr] = ';
    end

    % Generate Octave/Matlab function
    if (fcn.out_arg(1) == '[')
      fcn_str_ret = fcn.out_arg;  % already patched
    elseif (~ strcmp (fcn.out_arg, 'void'))
      fcn_str_ret = 'ret = ';
    else
      fcn_str_ret = '';
    end
    if ((length (fcn.in_args) == 1) && strcmp (fcn.in_args(1).name, 'void'))
      fcn_str_args = '';
    else
      fcn_str_args = strjoin({fcn.in_args.name}, ', ');
    end
    if (isempty (fcn_str_args))
      fcn_str_args2 = num2str(fcn.number);
    else
      fcn_str_args2 = strjoin({num2str(fcn.number), fcn_str_args}, ', ');
    end
    
    % Write function signature.
    fcn_str = ['function ', fcn_str_ret, fcn.name, ' (', fcn_str_args, ')\n'];

    % Write mpfr_t conversion code.
    for j = 1:length (fcn.in_args)
      if (strcmp (fcn.in_args(j).type, 'mpfr_t'))
        var = fcn.in_args(j).name;
        fcn_str = [fcn_str, '  if (isa (', var, ', ''mpfr_t''))\n'];
        fcn_str = [fcn_str, '    ', var, ' = ', var, '.idx;\n'];
        fcn_str = [fcn_str, '  else\n'];
        fcn_str = [fcn_str, '    error (''', var, ...
                                 ' must be a "mpfr_t" variable'');\n'];
        fcn_str = [fcn_str, '  end\n'];
      end
    end

    % Write gmp_mpfr_interface function call.
    fcn_str = [fcn_str, '  ', fcn_str_ret, 'gmp_mpfr_interface (', ...
                              fcn_str_args2, ');\n'];

    % Write EOF.
    fcn_str = [fcn_str, 'end\n\n'];
    fcn_str = [fcn_str, '%% This function was automatically generated by ', ...
      '"generate_m_files".\n'];

    % Write out the generated m-file.
    fp = fopen (fullfile ('..', [fcn.name, '.m']), 'w');
    fprintf (fp, fcn_str);
    fclose (fp);

    clear fcn;
  end
end
