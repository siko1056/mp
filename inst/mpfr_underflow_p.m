function ret = mpfr_underflow_p ()
% ret = mpfr_underflow_p ()
%
% Return the corresponding (underflow, overflow, divide-by-zero,
% invalid, inexact, _erange_) flag, which is non-zero iff the flag is
% set.
%

  ret = mex_apa_interface (1211);
end

% This function was automatically generated by "generate_m_files".
