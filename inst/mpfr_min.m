function ret = mpfr_min (rop, op1, op2, rnd)
  if (isa (rop, 'mpfr_t'))
    rop = rop.idx;
  else
    error ('rop must be a "mpfr_t" variable');
  end
  if (isa (op1, 'mpfr_t'))
    op1 = op1.idx;
  else
    error ('op1 must be a "mpfr_t" variable');
  end
  if (isa (op2, 'mpfr_t'))
    op2 = op2.idx;
  else
    error ('op2 must be a "mpfr_t" variable');
  end
  ret = gmp_mpfr_interface (169, rop, op1, op2, rnd);
end

% This function was automatically generated by "generate_m_files".
