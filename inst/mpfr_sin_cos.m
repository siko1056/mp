function ret = mpfr_sin_cos (sop, cop, op, rnd)
% ret = mpfr_sin_cos (sop, cop, op, rnd)
%
% Set simultaneously SOP to the sine of OP and COP to the cosine of
% OP, rounded in the direction RND with the corresponding precisions
% of SOP and COP, which must be different variables.  Return 0 iff
% both results are exact, more precisely it returns s+4c where s=0 if
% SOP is exact, s=1 if SOP is larger than the sine of OP, s=2 if SOP
% is smaller than the sine of OP, and similarly for c and the cosine
% of OP.
%

  if (isa (sop, 'mpfr_t'))
    sop = sop.idx;
  end
  if (isa (cop, 'mpfr_t'))
    cop = cop.idx;
  end
  if (isa (op, 'mpfr_t'))
    op = op.idx;
  end
  ret = gmp_mpfr_interface (101, sop, cop, op, rnd);
end

% This function was automatically generated by "generate_m_files".