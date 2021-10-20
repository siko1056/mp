function ret = mpfr_setsign (rop, op, s, rnd)
% ret = mpfr_setsign (rop, op, s, rnd)
%
% Set the value of ROP from OP, rounded toward the given direction
% RND, then set (resp. clear) its sign bit if S is non-zero (resp.
% zero), even when OP is a NaN.
%

  if (isa (rop, 'mpfr_t'))
    rop = rop.idx;
  end
  if (isa (op, 'mpfr_t'))
    op = op.idx;
  end
  ret = mex_apa_interface (1179, rop, op, s, rnd);
end

% This function was automatically generated by "generate_m_files".
