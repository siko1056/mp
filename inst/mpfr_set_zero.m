function mpfr_set_zero (x, sign)
  if (isa (x, 'mpfr_t'))
    x = x.idx;
  else
    error ('x must be a "mpfr_t" variable');
  end
  gmp_mpfr_interface (12, x, sign);
end

% This function was automatically generated by "generate_m_files".
