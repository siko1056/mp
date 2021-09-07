function ret = mpfr_fmms (rop, op1, op2, op3, op4, rnd)
% ret = mpfr_fmms (rop, op1, op2, op3, op4, rnd)
%
% Set ROP to (OP1 times OP2) + (OP3 times OP4) (resp. (OP1 times OP2)
% - (OP3 times OP4)) rounded in the direction RND.  In case the
% computation of OP1 times OP2 overflows or underflows (or that of
% OP3 times OP4), the result ROP is computed as if the two
% intermediate products were computed with rounding toward zero.
%

  if (isa (rop, 'mpfr_t'))
    rop = rop.idx;
  end
  if (isa (op1, 'mpfr_t'))
    op1 = op1.idx;
  end
  if (isa (op2, 'mpfr_t'))
    op2 = op2.idx;
  end
  if (isa (op3, 'mpfr_t'))
    op3 = op3.idx;
  end
  if (isa (op4, 'mpfr_t'))
    op4 = op4.idx;
  end
  ret = gmp_mpfr_interface (59, rop, op1, op2, op3, op4, rnd);
end

% This function was automatically generated by "generate_m_files".