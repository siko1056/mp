function ret = mpfr_get_emin ()
% ret = mpfr_get_emin ()
%
% Return the (current) smallest and largest exponents allowed for a
% floating-point variable.  The smallest positive value of a
% floating-point variable is one half times 2 raised to the smallest
% exponent and the largest value has the form (1 - epsilon) times 2
% raised to the largest exponent, where epsilon depends on the
% precision of the considered variable.
%

  ret = mex_apa_interface (1188);
end

% This function was automatically generated by "generate_m_files".
