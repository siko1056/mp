function ret = mpfr_get_prec (x)
% ret = mpfr_get_prec (x)
%
% Return the precision of X, i.e., the number of bits used to store
% its significand.
%

  if (isa (x, 'mpfr_t'))
    x = x.idx;
  end
  ret = mex_apa_interface (1004, x);
end

% This function was automatically generated by "generate_m_files".
