## ----setup, include = FALSE, cache=FALSE--------------------------------------
dplyr_installed <- require("dplyr", quietly = TRUE)
ggplot_installed <- require("ggplot2", quietly = TRUE)
inla_installed <- requireNamespace("INLA", quietly = TRUE)
tmbstan <- requireNamespace("tmbstan", quietly = TRUE)
rstan <- requireNamespace("rstan", quietly = TRUE)
bayesplot <- requireNamespace("bayesplot", quietly = TRUE)
pkgs <- dplyr_installed && ggplot_installed && inla_installed && tmbstan && rstan && bayesplot
EVAL <- identical(Sys.getenv("NOT_CRAN"), "true") && pkgs
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 7,
  fig.asp = 0.618,
  eval = EVAL,
  purl = EVAL
)

