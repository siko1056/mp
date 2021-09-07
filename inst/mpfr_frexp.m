function ret = mpfr_frexp (exp, y, x, rnd)
% ret = mpfr_frexp (exp, y, x, rnd)
%
% Set EXP (formally, the value pointed to by EXP) and Y such that
% 0.5<=abs(Y)<1 and Y times 2 raised to EXP equals X rounded to the
% precision of Y, using the given rounding mode.  If X is zero, then
% Y is set to a zero of the same sign and EXP is set to 0.  If X is
% NaN or an infinity, then Y is set to the same value and EXP is
% undefined.
%

  if (isa (y, 'mpfr_t'))
    y = y.idx;
  end
  if (isa (x, 'mpfr_t'))
    x = x.idx;
  end
  ret = gmp_mpfr_interface (19, exp, y, x, rnd);
end

% This function was automatically generated by "generate_m_files".