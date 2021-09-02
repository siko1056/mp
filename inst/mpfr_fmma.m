function ret = mpfr_fmma (rop, op1, op2, op3, op4, rnd)
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
  if (isa (op3, 'mpfr_t'))
    op3 = op3.idx;
  else
    error ('op3 must be a "mpfr_t" variable');
  end
  if (isa (op4, 'mpfr_t'))
    op4 = op4.idx;
  else
    error ('op4 must be a "mpfr_t" variable');
  end
  ret = gmp_mpfr_interface (58, rop, op1, op2, op3, op4, rnd);
end

% This function was automatically generated by "generate_m_files".
