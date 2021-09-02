function ret = mpfr_const_log2 (rop, rnd)
  if (isa (rop, 'mpfr_t'))
    rop = rop.idx;
  else
    error ('rop must be a "mpfr_t" variable');
  end
  ret = gmp_mpfr_interface (139, rop, rnd);
end

% This function was automatically generated by "generate_m_files".
