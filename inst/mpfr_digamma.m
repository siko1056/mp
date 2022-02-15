function ret = mpfr_digamma (rop, op, rnd)
% ret = mpfr_digamma (rop, op, rnd)
%
% Set ROP to the value of the Digamma (sometimes also called Psi)
% function on OP, rounded in the direction RND.  When OP is a
% negative integer, set ROP to NaN.
%

  ret = mex_apa_interface (1125, rop, op, rnd);
end

% This function was automatically generated by "generate_m_files".
