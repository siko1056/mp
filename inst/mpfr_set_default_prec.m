function mpfr_set_default_prec (prec)
% mpfr_set_default_prec (prec)
%
% Set the default precision to be *exactly* PREC bits, where PREC can
% be any integer between ‘MPFR_PREC_MIN’ and ‘MPFR_PREC_MAX’.  The
% precision of a variable means the number of bits used to store its
% significand.  All subsequent calls to ‘mpfr_init’ or ‘mpfr_inits’
% will use this precision, but previously initialized variables are
% unaffected.  The default precision is set to 53 bits initially.
%
% Note: when MPFR is built with the ‘--enable-thread-safe’ configure
% option, the default precision is local to each thread.  *Note
% Memory Handling::, for more information.
%

  mex_apa_interface (1001, prec);
end

% This function was automatically generated by "generate_m_files".
