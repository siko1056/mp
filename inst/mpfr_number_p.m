function ret = mpfr_number_p (op)
% ret = mpfr_number_p (op)
%
% Return non-zero if OP is respectively NaN, an infinity, an ordinary
% number (i.e., neither NaN nor an infinity), zero, or a regular
% number (i.e., neither NaN, nor an infinity nor zero).  Return zero
% otherwise.
%

  ret = mex_apa_interface (1071, op);
end

% This function was automatically generated by "generate_m_files".
