function ret = mpfr_fmod (r, x, y, rnd)
  if (isa (r, 'mpfr_t'))
    r = r.idx;
  else
    error ('r must be a "mpfr_t" variable');
  end
  if (isa (x, 'mpfr_t'))
    x = x.idx;
  else
    error ('x must be a "mpfr_t" variable');
  end
  if (isa (y, 'mpfr_t'))
    y = y.idx;
  else
    error ('y must be a "mpfr_t" variable');
  end
  ret = gmp_mpfr_interface (156, r, x, y, rnd);
end

% This function was automatically generated by "generate_m_files".
