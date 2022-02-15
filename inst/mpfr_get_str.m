function [significant, expptr] = mpfr_get_str (base, n, op, rnd)
% [significant, expptr] = mpfr_get_str (base, n, op, rnd)
%
% Convert OP to a string of digits in base abs(BASE), with rounding
% in the direction RND, where N is either zero (see below) or the
% number of significant digits output in the string.  The argument
% BASE may vary from 2 to 62 or from −2 to −36; otherwise the
% function does nothing and immediately returns a null pointer.
%
% For BASE in the range 2 to 36, digits and lower-case letters are
% used; for −2 to −36, digits and upper-case letters are used; for 37
% to 62, digits, upper-case letters, and lower-case letters, in that
% significance order, are used.  Warning!  This implies that for BASE
% > 10, the successor of the digit 9 depends on BASE.  This choice
% has been done for compatibility with GMP’s ‘mpf_get_str’ function.
% Users who wish a more consistent behavior should write a simple
% wrapper.
%
% If the input is NaN, then the returned string is ‘@NaN@’ and the
% NaN flag is set.  If the input is +Inf (resp. −Inf), then the
% returned string is ‘@Inf@’ (resp. ‘-@Inf@’).
%
% If the input number is a finite number, the exponent is written
% through the pointer EXPPTR (for input 0, the current minimal
% exponent is written); the type ‘mpfr_exp_t’ is large enough to hold
% the exponent in all cases.
%
% The generated string is a fraction, with an implicit radix point
% immediately to the left of the first digit.  For example, the
% number −3.1416 would be returned as "−31416" in the string and 1
% written at EXPPTR.  If RND is to nearest, and OP is exactly in the
% middle of two consecutive possible outputs, the one with an even
% significand is chosen, where both significands are considered with
% the exponent of OP.  Note that for an odd base, this may not
% correspond to an even last digit: for example with 2 digits in base
% 7, (14) and a half is rounded to (15) which is 12 in decimal, (16)
% and a half is rounded to (20) which is 14 in decimal, and (26) and
% a half is rounded to (26) which is 20 in decimal.
%
% If N is zero, the number of digits of the significand is taken as
% ‘mpfr_get_str_ndigits(BASE,P)’ where P is the precision of OP
% (*note mpfr_get_str_ndigits::).
%
% If STR is a null pointer, space for the significand is allocated
% using the allocation function (*note Memory Handling::) and a
% pointer to the string is returned (unless the base is invalid).  To
% free the returned string, you must use ‘mpfr_free_str’.
%
% If STR is not a null pointer, it should point to a block of storage
% large enough for the significand.  A safe block size (sufficient
% for any value) is ‘max(N + 2, 7)’ if N is not zero; if N is zero,
% replace it by ‘mpfr_get_str_ndigits(BASE,P)’ where P is the
% precision of OP, as mentioned above.  The extra two bytes are for a
% possible minus sign, and for the terminating null character, and
% the value 7 accounts for ‘-@Inf@’ plus the terminating null
% character.  The pointer to the string STR is returned (unless the
% base is invalid).
%
% Like in usual functions, the inexact flag is set iff the result is
% inexact.
%

  [significant, expptr] = mex_apa_interface (1021, base, n, op, rnd);
end

% This function was automatically generated by "generate_m_files".
