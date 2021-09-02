function ret = mpfr_zero_p (op)
  if (isa (op, 'mpfr_t'))
    op = op.idx;
  else
    error ('op must be a "mpfr_t" variable');
  end
  ret = gmp_mpfr_interface (72, op);
end

% This function was automatically generated by "generate_m_files".
