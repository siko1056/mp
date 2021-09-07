function ret = mpfr_get_prec (x)
% ret = mpfr_get_prec (x)
%
% Return the precision of X, i.e., the number of bits used to store
% its significand.
%

  if (isa (x, 'mpfr_t'))
    x = x.idx;
  end
  ret = gmp_mpfr_interface (4, x);
end

% This function was automatically generated by "generate_m_files".