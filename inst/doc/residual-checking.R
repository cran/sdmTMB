## ----setup, include = FALSE, cache=FALSE--------------------------------------
dplyr_installed <- require("dplyr", quietly = TRUE)
ggplot_installed <- require("ggplot2", quietly = TRUE)
inla_installed <- require("INLA", quietly = TRUE)
glmmTMB_installed <- require("glmmTMB", quietly = TRUE)
DHARMa_installed <- require("DHARMa", quietly = TRUE)
tmbstan_installed <- require("tmbstan", quietly = TRUE)
pkgs <- dplyr_installed && ggplot_installed && inla_installed && glmmTMB_installed && DHARMa_installed &&
  tmbstan_installed
EVAL <- identical(Sys.getenv("NOT_CRAN"), "true") && pkgs
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 7,
  fig.asp = 0.618,
  eval = EVAL,
  purl = EVAL
)

