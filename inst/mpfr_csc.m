function ret = mpfr_csc (rop, op, rnd)
% ret = mpfr_csc (rop, op, rnd)
%
% Set ROP to the secant of OP, cosecant of OP, cotangent of OP,
% rounded in the direction RND.
%

  if (isa (rop, 'mpfr_t'))
    rop = rop.idx;
  end
  if (isa (op, 'mpfr_t'))
    op = op.idx;
  end
  ret = mex_apa_interface (1103, rop, op, rnd);
end

% This function was automatically generated by "generate_m_files".
