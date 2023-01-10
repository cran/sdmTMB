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
  "$g$", "Group"
)
knitr::kable(subscripts, caption = "Table 1: Subscript notation", escape = FALSE, booktabs = TRUE)

## ----symbols, results='asis'--------------------------------------------------
symbols <- tibble::tribble(
   ~Symbol, ~Code, ~Description,
  "$y$", "`y_i`", "Observed response data",
  "$\\mu$", "`mu_i`", "Mean",
  "$\\phi$", "`phi`", "A dispersion parameter for a distribution",
  "$f$", "`fit$family$link`", "Link function",
  "$f^{-1}$", "`fit$family$linkinv`", "Inverse link function",
  "$\\boldsymbol{\\beta}$", "`b_j`", "Parameter vector",
  "$\\boldsymbol{X}$", "`X_ij`", "A predictor model matrix",
  "$O_{\\s, t}$", "`offset`", "An offset variable at point $\\s$ and time $t$",

  "$\\omega_{\\s}$", "`omega_s`", "Spatial random field at point $\\s$ (knot)",
  "$\\omega_{\\s}^*$", "`omega_s_A`", "Spatial random field at point $\\s$ (interpolated)",
  "$\\zeta_{\\s}$", "`zeta_s`", "Spatially varying coefficient random field at point $\\s$ (knot)",
  "$\\zeta_{\\s}^*$", "`zeta_s_A`", "Spatially varying coefficient random field at point $\\s$ (interpolated)",
  "$\\epsilon_{\\s, t}$", "`epsilon_st`", "Spatiotemporal random field at point $\\s$ and time $t$ (knot)",
  "$\\epsilon_{\\s, t}^*$", "`epsilon_st_A`", "Spatiotemporal random field at point $\\s$ and time $t$ (interpolated)",
  "$\\delta_{\\s,t}$", "`b_t`", "AR(1) or random walk spatiotemporal deviations (knot)",
  "$\\alpha_g$", "`RE`", "IID random intercept deviation for group $g$",

  "$\\boldsymbol{\\Sigma}_\\omega$", "`-`", "Spatial random field covariance matrix",
  "$\\boldsymbol{\\Sigma}_\\zeta$", "`-`", "Spatially varying coefficient random field covariance matrix",
  "$\\boldsymbol{\\Sigma}_\\epsilon$", "`-`", "Spatiotemporal random field covariance matrix",
  "$\\boldsymbol{Q}_\\omega$", "`Q_s`", "Spatial random field precision matrix",
  "$\\boldsymbol{Q}_\\zeta$", "`Q_s`", "Spatially varying coefficient random field precision matrix",
  "$\\boldsymbol{Q}_\\epsilon$", "`Q_st`", "Spatiotemporal random field precision matrix",

  "$\\sigma_\\alpha^2$", "`sigma_G`", "IID random intercept variance",
  "$\\sigma_\\epsilon^2$", "`sigma_E`", "Spatiotemporal random field marginal variance",
  "$\\sigma_\\omega^2$", "`sigma_O`", "Spatial random field marginal variance",
  "$\\sigma_\\zeta^2$", "`sigma_Z`", "Spatially varying coefficient random field marginal variance",
  "$\\kappa_\\omega$", "`kappa(0)`", "Spatial decorrelation rate",
  "$\\kappa_\\epsilon$", "`kappa(1)`", "Spatiotemporal decorrelation rate",

  "$\\rho$", "`ar1_rho`", "Correlation between random fields in subsequent time steps",
  "$\\boldsymbol{A}$", "`A`", "Sparse projection matrix to interpolate between knot and data locations",
  "$\\boldsymbol{H}$", "`H`", "2-parameter rotation matrix used to define anisotropy"
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

