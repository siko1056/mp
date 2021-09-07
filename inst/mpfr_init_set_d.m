function ret = mpfr_init_set_d (rop, op, rnd)
% ret = mpfr_init_set_d (rop, op, rnd)
%
% Initialize ROP and set its value from OP, rounded in the direction
% RND.  The precision of ROP will be taken from the active default
% precision, as set by ‘mpfr_set_default_prec’.
%

  if (isa (rop, 'mpfr_t'))
    rop = rop.idx;
  end
  ret = gmp_mpfr_interface (15, rop, op, rnd);
end

% This function was automatically generated by "generate_m_files".