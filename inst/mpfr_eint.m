function ret = mpfr_eint (rop, op, rnd)
% ret = mpfr_eint (rop, op, rnd)
%
% Set ROP to the exponential integral of OP, rounded in the direction
% RND.  This is the sum of Euler’s constant, of the logarithm of the
% absolute value of OP, and of the sum for k from 1 to infinity of OP
% to the power k, divided by k and factorial(k).  For positive OP, it
% corresponds to the Ei function at OP (see formula 5.1.10 from the
% Handbook of Mathematical Functions from Abramowitz and Stegun), and
% for negative OP, to the opposite of the E1 function (sometimes
% called eint1) at −OP (formula 5.1.1 from the same reference).
%

  if (isa (rop, 'mpfr_t'))
    rop = rop.idx;
  end
  if (isa (op, 'mpfr_t'))
    op = op.idx;
  end
  ret = mex_apa_interface (1119, rop, op, rnd);
end

% This function was automatically generated by "generate_m_files".
