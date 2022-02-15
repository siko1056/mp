function ret = mpfr_atan (rop, op, rnd)
% ret = mpfr_atan (rop, op, rnd)
%
% Set ROP to the arc-cosine, arc-sine or arc-tangent of OP, rounded
% in the direction RND.  Note that since ‘acos(-1)’ returns the
% floating-point number closest to Pi according to the given rounding
% mode, this number might not be in the output range 0 <= ROP < Pi of
% the arc-cosine function; still, the result lies in the image of the
% output range by the rounding function.  The same holds for
% ‘asin(-1)’, ‘asin(1)’, ‘atan(-Inf)’, ‘atan(+Inf)’ or for ‘atan(op)’
% with large OP and small precision of ROP.
%

  ret = mex_apa_interface (1107, rop, op, rnd);
end

% This function was automatically generated by "generate_m_files".
