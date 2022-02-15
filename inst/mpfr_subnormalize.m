function ret = mpfr_subnormalize (x, t, rnd)
% ret = mpfr_subnormalize (x, t, rnd)
%
% This function rounds X emulating subnormal number arithmetic: if X
% is outside the subnormal exponent range of the emulated
% floating-point system, this function just propagates the *note
% ternary value:: T; otherwise, it rounds X to precision
% ‘EXP(X)-emin+1’ according to rounding mode RND and previous ternary
% value T, avoiding double rounding problems.  More precisely in the
% subnormal domain, denoting by E the value of ‘emin’, X is rounded
% in fixed-point arithmetic to an integer multiple of two to the
% power E−1; as a consequence, 1.5 multiplied by two to the power E−1
% when T is zero is rounded to two to the power E with rounding to
% nearest.
%
% ‘PREC(X)’ is not modified by this function.  RND and T must be the
% rounding mode and the returned ternary value used when computing X
% (as in ‘mpfr_check_range’).  The subnormal exponent range is from
% ‘emin’ to ‘emin+PREC(X)-1’.  If the result cannot be represented in
% the current exponent range of MPFR (due to a too small ‘emax’), the
% behavior is undefined.  Note that unlike most functions, the result
% is compared to the exact one, not the input value X, i.e., the
% ternary value is propagated.
%
% As usual, if the returned ternary value is non zero, the inexact
% flag is set.  Moreover, if a second rounding occurred (because the
% input X was in the subnormal range), the underflow flag is set.
%
% Warning!  If you change ‘emin’ (with ‘mpfr_set_emin’) just before
% calling ‘mpfr_subnormalize’, you need to make sure that the value
% is in the current exponent range of MPFR.  But it is better to
% change ‘emin’ before any computation, if possible.
%

  ret = mex_apa_interface (1197, x, t, rnd);
end

% This function was automatically generated by "generate_m_files".
