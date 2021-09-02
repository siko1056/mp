function ret = mpfr_init_set_d (rop, op, rnd)
  if (isa (rop, 'mpfr_t'))
    rop = rop.idx;
  else
    error ('rop must be a "mpfr_t" variable');
  end
  ret = gmp_mpfr_interface (15, rop, op, rnd);
end

% This function was automatically generated by "generate_m_files".
