function mpfr_free_str (str)
% mpfr_free_str (str)
%
% Free a string allocated by ‘mpfr_get_str’ using the unallocation
% function (*note Memory Handling::).  The block is assumed to be
% ‘strlen(STR)+1’ bytes.
%

  mex_apa_interface (1022, str);
end

% This function was automatically generated by "generate_m_files".
