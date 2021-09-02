function ret = mpfr_fits_uint_p (op, rnd)
  if (isa (op, 'mpfr_t'))
    op = op.idx;
  else
    error ('op must be a "mpfr_t" variable');
  end
  ret = gmp_mpfr_interface (25, op, rnd);
end

% This function was automatically generated by "generate_m_files".
