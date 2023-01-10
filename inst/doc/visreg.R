## ----setup, include = FALSE, cache=FALSE--------------------------------------
ggplot_installed <- require("ggplot2", quietly = TRUE)
visreg_installed <- require("visreg", quietly = TRUE)
inla_installed <- requireNamespace("INLA", quietly = TRUE)
pkgs <- ggplot_installed && visreg_installed && inla_installed
EVAL <- identical(Sys.getenv("NOT_CRAN"), "true") && pkgs
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 7,
  fig.asp = 0.618,
  eval = EVAL,
  purl = EVAL
)

