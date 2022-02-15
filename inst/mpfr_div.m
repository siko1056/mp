function ret = mpfr_div (rop, op1, op2, rnd)
% ret = mpfr_div (rop, op1, op2, rnd)
%
% Set ROP to OP1/OP2 rounded in the direction RND.  When a result is
% zero, its sign is the product of the signs of the operands.  For
% types having no signed zeros, 0 is considered positive; but note
% that if OP1 is non-zero and OP2 is zero, the result might change
% from ±Inf to NaN in future MPFR versions if there is an opposite
% decision on the IEEE 754 side.  The same restrictions than for
% ‘mpfr_add_d’ apply to ‘mpfr_d_div’ and ‘mpfr_div_d’.
%

  ret = mex_apa_interface (1039, rop, op1, op2, rnd);
end

% This function was automatically generated by "generate_m_files".
