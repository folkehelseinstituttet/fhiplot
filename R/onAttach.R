#' @import data.table ggplot2
#' @importFrom magrittr %>%
.onAttach <- function(libname, pkgname) {
  packageStartupMessage(paste(
    "fhiplot",
    utils::packageDescription("fhiplot")$Version,
    "https://folkehelseinstituttet.github.io/fhiplot"
  ))
}
