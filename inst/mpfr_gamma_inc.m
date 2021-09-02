function ret = mpfr_gamma_inc (rop, op, op2, rnd)
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
  if (isa (op2, 'mpfr_t'))
    op2 = op2.idx;
  else
    error ('op2 must be a "mpfr_t" variable');
  end
  ret = gmp_mpfr_interface (122, rop, op, op2, rnd);
end

% This function was automatically generated by "generate_m_files".
