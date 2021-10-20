function ret = mpfr_y1 (rop, op, rnd)
% ret = mpfr_y1 (rop, op, rnd)
%
% Set ROP to the value of the second kind Bessel function of order 0
% (resp. 1 and N) on OP, rounded in the direction RND.  When OP is
% NaN or negative, ROP is always set to NaN.  When OP is +Inf, ROP is
% set to +0.  When OP is zero, ROP is set to +Inf or −Inf depending
% on the parity and sign of N.
%

  if (isa (rop, 'mpfr_t'))
    rop = rop.idx;
  end
  if (isa (op, 'mpfr_t'))
    op = op.idx;
  end
  ret = mex_apa_interface (1135, rop, op, rnd);
end

% This function was automatically generated by "generate_m_files".
