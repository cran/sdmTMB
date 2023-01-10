## ---- include = FALSE---------------------------------------------------------
sf_installed <- require("sf", quietly = TRUE)
ggplot_installed <- require("ggplot2", quietly = TRUE)
inla_installed <- requireNamespace("INLA", quietly = TRUE)
pkgs <- sf_installed && ggplot_installed && inla_installed
EVAL <- identical(Sys.getenv("NOT_CRAN"), "true") && pkgs
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = EVAL,
  purl = EVAL
)

