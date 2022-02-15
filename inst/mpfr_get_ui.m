function ret = mpfr_get_ui (op, rnd)
% ret = mpfr_get_ui (op, rnd)
%
% Convert OP to a ‘long’, an ‘unsigned long’, an ‘intmax_t’ or an
% ‘uintmax_t’ (respectively) after rounding it to an integer with
% respect to RND.  If OP is NaN, 0 is returned and the _erange_ flag
% is set.  If OP is too big for the return type, the function returns
% the maximum or the minimum of the corresponding C type, depending
% on the direction of the overflow; the _erange_ flag is set too.
% When there is no such range error, if the return value differs from
% OP, i.e., if OP is not an integer, the inexact flag is set.  See
% also ‘mpfr_fits_slong_p’, ‘mpfr_fits_ulong_p’, ‘mpfr_fits_intmax_p’
% and ‘mpfr_fits_uintmax_p’.
%

  ret = mex_apa_interface (1417, op, rnd);
end

% This function was automatically generated by "generate_m_files".
