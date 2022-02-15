function ret = mpfr_ceil (rop, op)
% ret = mpfr_ceil (rop, op)
%
% Set ROP to OP rounded to an integer.  ‘mpfr_rint’ rounds to the
% nearest representable integer in the given direction RND, and the
% other five functions behave in a similar way with some fixed
% rounding mode:
% • ‘mpfr_ceil’: to the next higher or equal representable integer
% • ‘mpfr_floor’ to the next lower or equal representable integer
% • ‘mpfr_round’ to the nearest representable integer, rounding
% • ‘mpfr_roundeven’ to the nearest representable integer,
% • ‘mpfr_trunc’ to the next representable integer toward zero
% When OP is a zero or an infinity, set ROP to the same value (with
% the same sign).
%
% The return value is zero when the result is exact, positive when it
% is greater than the original value of OP, and negative when it is
% smaller.  More precisely, the return value is 0 when OP is an
% integer representable in ROP, 1 or −1 when OP is an integer that is
% not representable in ROP, 2 or −2 when OP is not an integer.
%
% When OP is NaN, the NaN flag is set as usual.  In the other cases,
% the inexact flag is set when ROP differs from OP, following the ISO
% C99 rule for the ‘rint’ function.  If you want the behavior to be
% more like IEEE 754 / ISO TS 18661-1, i.e., the usual behavior where
% the round-to-integer function is regarded as any other mathematical
% function, you should use one the ‘mpfr_rint_*’ functions instead.
%
% Note that no double rounding is performed; for instance, 10.5
% (1010.1 in binary) is rounded by ‘mpfr_rint’ with rounding to
% nearest to 12 (1100 in binary) in 2-bit precision, because the two
% enclosing numbers representable on two bits are 8 and 12, and the
% closest is 12.  (If one first rounded to an integer, one would
% round 10.5 to 10 with even rounding, and then 10 would be rounded
% to 8 again with even rounding.)
%

  ret = mex_apa_interface (1144, rop, op);
end

% This function was automatically generated by "generate_m_files".
