function ret = mpfr_asinh (rop, op, rnd)
  if (isa (rop, 'mpfr_t'))
    rop = rop.idx;
  else
    error ('rop must be a "mpfr_t" variable');
  end
  if (isa (op, 'mpfr_t'))
    op = op.idx;
  else
    error ('op must be a "mpfr_t" variable');
  end
  ret = gmp_mpfr_interface (117, rop, op, rnd);
end

% This function was automatically generated by "generate_m_files".
