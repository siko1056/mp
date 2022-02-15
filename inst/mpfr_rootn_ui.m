function ret = mpfr_rootn_ui (rop, op, n, rnd)
% ret = mpfr_rootn_ui (rop, op, n, rnd)
%
% Set ROP to the Nth root (with N = 3, the cubic root, for
% ‘mpfr_cbrt’) of OP rounded in the direction RND.  For N = 0, set
% ROP to NaN.  For N odd (resp. even) and OP negative (including
% −Inf), set ROP to a negative number (resp. NaN).  If OP is zero,
% set ROP to zero with the sign obtained by the usual limit rules,
% i.e., the same sign as OP if N is odd, and positive if N is even.
%
% These functions agree with the rootn function of the IEEE 754-2008
% standard and the P754/D2.41 draft of the next standard
% (Section 9.2).  Note that it is here restricted to N >= 0.
% Functions allowing a negative N may be implemented in the future.
%

  ret = mex_apa_interface (1046, rop, op, n, rnd);
end

% This function was automatically generated by "generate_m_files".
