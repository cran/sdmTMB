## ----setup, echo=FALSE, cache=FALSE-------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  echo = FALSE,
  error = FALSE,
  message = FALSE,
  warning = FALSE
)

## ----indices------------------------------------------------------------------
subscripts <- tibble::tribble(
  ~Symbol, ~Description,
  "$\\s$", "Index for space; a vector of x and y coordinates",
  "$t$", "Index for time",
  "$g$", "Group",
  "$p$", "Index for time-varying coefficient",
  "$l$", "Index for spatially varying coefficient (SVC)"
)
knitr::kable(subscripts, caption = "Table 1: Subscript notation", escape = FALSE, booktabs = TRUE)

## ----symbols, results='asis'--------------------------------------------------
symbols <- tibble::tribble(
   ~Symbol, ~Code, ~Description,
  "$y$", "`y_i`", "Observed response data",
  "$\\mu$", "`mu_i`", "Mean",
  "$\\eta$", "`eta_i`", "Linear predictor before applying the inverse link ($f^{-1}$)",
  "$\\phi$", "`phi`", "A dispersion parameter for a distribution",
  "$f$", "`fit$family$link`", "Link function",
  "$f^{-1}$", "`fit$family$linkinv`", "Inverse link function",
  "$\\boldsymbol{\\beta}$", "`b_j`", "Parameter vector",
  "$\\bX$", "`X_ij`", "A predictor model matrix",
  "$\\bZ$", "`Zt_list`", "Random effect design matrix (list of sparse blocks; rows correspond to observations; subset by group $g$)",
  "$O_{\\s, t}$", "`offset`", "An offset variable at point $\\s$ and time $t$",

  "$\\omega_{\\s}$", "`omega_s`", "Spatial random field at point $\\s$ (knot)",
  "$\\omega_{\\s}^*$", "`omega_s_A`", "Spatial random field at point $\\s$ (interpolated)",
  "$\\zeta_{\\s}$", "`zeta_s`", "Spatially varying coefficient random field at point $\\s$ (knot)",
  "$\\zeta_{\\s}^*$", "`zeta_s_A`", "Spatially varying coefficient random field at point $\\s$ (interpolated)",
  "$\\epsilon_{\\s, t}$", "`epsilon_st`", "Spatiotemporal random field at point $\\s$ and time $t$ (knot)",
  "$\\epsilon_{\\s, t}^*$", "`epsilon_st_A`", "Spatiotemporal random field at point $\\s$ and time $t$ (interpolated)",
  "$\\delta_{\\s,t}$", "`b_t`", "AR(1) or random walk spatiotemporal deviations (knot)",
  "$\\alpha_g$", "`RE`", "IID random intercept deviation for group $g$",
  "$\\mathbf{b}_{g}$", "`re_b_pars`", "Vector of random intercepts/slopes for group $g$",

  "$\\boldsymbol{\\Sigma}_\\omega$", "`-`", "Spatial random field covariance matrix",
  "$\\boldsymbol{\\Sigma}_\\zeta$", "`-`", "Spatially varying coefficient random field covariance matrix",
  "$\\boldsymbol{\\Sigma}_\\epsilon$", "`-`", "Spatiotemporal random field covariance matrix",
  "$\\bQ_\\omega$", "`Q_s`", "Spatial random field precision matrix",
  "$\\bQ_\\zeta$", "`Q_s`", "Spatially varying coefficient random field precision matrix",
  "$\\bQ_\\epsilon$", "`Q_st`", "Spatiotemporal random field precision matrix",
  "$\\bSigma_{g}$", "`re_cov_pars`", "Random effect covariance per grouping factor (Cholesky SD + correlation params)",

  "$\\sigma_\\alpha^2$", "`sigma_G`", "IID random intercept variance",
  "$\\sigma_\\epsilon^2$", "`sigma_E`", "Spatiotemporal random field marginal variance",
  "$\\sigma_\\omega^2$", "`sigma_O`", "Spatial random field marginal variance",
  "$\\sigma_\\zeta^2$", "`sigma_Z`", "Spatially varying coefficient random field marginal variance",
  "$\\kappa_\\omega$", "`kappa(0)`", "Spatial decorrelation rate",
  "$\\kappa_\\epsilon$", "`kappa(1)`", "Spatiotemporal decorrelation rate",

  "$\\rho$", "`ar1_rho`", "Correlation between random fields in subsequent time steps",
  "$\\rho_{\\gamma}$", "`rho_time`", "Correlation between time-varying coefficients in subsequent time steps",
  "$\\Qg$", "`gengamma_Q`", "Generalized gamma shape parameter ($Q \\rightarrow 0$ gives lognormal; $Q=\\phi$ gives gamma)",
  "$\\bA$", "`A`", "Sparse projection matrix to interpolate between knot and data locations",
  "$\\bH$", "`H`", "2-parameter rotation matrix used to define anisotropy"
)
knitr::kable(symbols, caption = "Table 2: Symbol notation, code representation (in model output or in model template code), and descriptions.", escape = FALSE, booktabs = TRUE,
   linesep = c(
    rep('', 7), # y, mean etc.
    '\\addlinespace',
    rep('', 7), # fields
    '\\addlinespace',
    rep('', 5), # covariance stuff
    '\\addlinespace',
    rep('', 5), # more covariance stuff
    '\\addlinespace',
    rep('', 99) # end
  ))

