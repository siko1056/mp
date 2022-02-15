function ret = mpfr_add (rop, op1, op2, rnd)
% ret = mpfr_add (rop, op1, op2, rnd)
%
% Set ROP to OP1 + OP2 rounded in the direction RND.  The IEEE 754
% rules are used, in particular for signed zeros.  But for types
% having no signed zeros, 0 is considered unsigned (i.e., (+0) + 0 =
% (+0) and (−0) + 0 = (−0)).  The ‘mpfr_add_d’ function assumes that
% the radix of the ‘double’ type is a power of 2, with a precision at
% most that declared by the C implementation (macro
% ‘IEEE_DBL_MANT_DIG’, and if not defined 53 bits).
%

  ret = mex_apa_interface (1031, rop, op1, op2, rnd);
end

% This function was automatically generated by "generate_m_files".
