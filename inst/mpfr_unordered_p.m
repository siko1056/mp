function ret = mpfr_unordered_p (op1, op2)
% ret = mpfr_unordered_p (op1, op2)
%
% Return non-zero if OP1 or OP2 is a NaN (i.e., they cannot be
% compared), zero otherwise.
%

  ret = mex_apa_interface (1081, op1, op2);
end

% This function was automatically generated by "generate_m_files".
