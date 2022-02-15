function [ret, signp] = mpfr_lgamma (rop, op, rnd)
% [ret, signp] = mpfr_lgamma (rop, op, rnd)
%
% Set ROP to the value of the logarithm of the absolute value of the
% Gamma function on OP, rounded in the direction RND.  The sign (1 or
% −1) of Gamma(OP) is returned in the object pointed to by SIGNP.
% When OP is 1 or 2, set ROP to +0 (in all rounding modes).  When OP
% is an infinity or a nonpositive integer, set ROP to +Inf.  When OP
% is NaN, −Inf or a negative integer, *SIGNP is undefined, and when
% OP is ±0, *SIGNP is the sign of the zero.
%

  [ret, signp] = mex_apa_interface (1124, rop, op, rnd);
end

% This function was automatically generated by "generate_m_files".
