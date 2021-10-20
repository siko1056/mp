function ret = mpfr_sinh (rop, op, rnd)
% ret = mpfr_sinh (rop, op, rnd)
%
% Set ROP to the hyperbolic cosine, sine or tangent of OP, rounded in
% the direction RND.
%

  if (isa (rop, 'mpfr_t'))
    rop = rop.idx;
  end
  if (isa (op, 'mpfr_t'))
    op = op.idx;
  end
  ret = mex_apa_interface (1110, rop, op, rnd);
end

% This function was automatically generated by "generate_m_files".
