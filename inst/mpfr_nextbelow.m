function mpfr_nextbelow (x)
% mpfr_nextbelow (x)
%
% Equivalent to ‘mpfr_nexttoward’ where Y is plus infinity (resp.
% minus infinity).
%

  if (isa (x, 'mpfr_t'))
    x = x.idx;
  end
  mex_apa_interface (1168, x);
end

% This function was automatically generated by "generate_m_files".
