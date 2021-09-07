function ret = mpfr_ai (rop, x, rnd)
% ret = mpfr_ai (rop, x, rnd)
%
% Set ROP to the value of the Airy function Ai on X, rounded in the
% direction RND.  When X is NaN, ROP is always set to NaN.  When X is
% +Inf or −Inf, ROP is +0.  The current implementation is not
% intended to be used with large arguments.  It works with abs(X)
% typically smaller than 500.  For larger arguments, other methods
% should be used and will be implemented in a future version.
%

  if (isa (rop, 'mpfr_t'))
    rop = rop.idx;
  end
  if (isa (x, 'mpfr_t'))
    x = x.idx;
  end
  ret = gmp_mpfr_interface (138, rop, x, rnd);
end

% This function was automatically generated by "generate_m_files".