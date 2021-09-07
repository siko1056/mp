function ret = mpfr_set_str (rop, s, base, rnd)
% ret = mpfr_set_str (rop, s, base, rnd)
%
% Set ROP to the value of the string S in base BASE, rounded in the
% direction RND.  See the documentation of ‘mpfr_strtofr’ for a
% detailed description of the valid string formats.  Contrary to
% ‘mpfr_strtofr’, ‘mpfr_set_str’ requires the _whole_ string to
% represent a valid floating-point number.
%
% The meaning of the return value differs from other MPFR functions:
% it is 0 if the entire string up to the final null character is a
% valid number in base BASE; otherwise it is −1, and ROP may have
% changed (users interested in the *note ternary value:: should use
% ‘mpfr_strtofr’ instead).
%
% Note: it is preferable to use ‘mpfr_strtofr’ if one wants to
% distinguish between an infinite ROP value coming from an infinite S
% or from an overflow.
%

  if (isa (rop, 'mpfr_t'))
    rop = rop.idx;
  end
  ret = gmp_mpfr_interface (9, rop, s, base, rnd);
end

% This function was automatically generated by "generate_m_files".