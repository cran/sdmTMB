## ----setup, include = FALSE, cache=FALSE--------------------------------------
dplyr_installed <- require("dplyr", quietly = TRUE)
ggplot_installed <- require("ggplot2", quietly = TRUE)
ggeffects_installed <- require("ggeffects", quietly = TRUE)
effects_installed <- require("effects", quietly = TRUE)
inla_installed <- requireNamespace("INLA", quietly = TRUE)
pkgs <- dplyr_installed && ggplot_installed &&
  ggeffects_installed && effects_installed && inla_installed
EVAL <- identical(Sys.getenv("NOT_CRAN"), "true") && pkgs
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 7,
  fig.asp = 0.618,
  eval = EVAL,
  purl = EVAL
)

