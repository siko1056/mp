function ret = mpfr_lessequal_p (op1, op2)
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
  ret = gmp_mpfr_interface (78, op1, op2);
end

% This function was automatically generated by "generate_m_files".
