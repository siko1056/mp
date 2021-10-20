function ret = mpfr_min_prec (x)
% ret = mpfr_min_prec (x)
%
% Return the minimal number of bits required to store the significand
% of X, and 0 for special values, including 0.
%

  if (isa (x, 'mpfr_t'))
    x = x.idx;
  end
  ret = mex_apa_interface (1165, x);
end

% This function was automatically generated by "generate_m_files".
