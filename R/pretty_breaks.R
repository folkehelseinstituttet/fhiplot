#' format_nor
#' @param x value
#' @param digits Number of digits after the decimal place (required)
#' @param sig Number of significant digits (optional)
#' @export
format_nor <- function(x, digits = 0, sig = NULL) {
  if (!is.null(sig)) {
    return(formatC(signif(x, digits = sig), big.mark = ".", decimal.mark = ",", format = "f", digits = digits))
  } else {
    return(formatC(x, big.mark = ".", decimal.mark = ",", format = "f", digits = digits))
  }
}

#' pretty_breaks
#' @param n a
#' @param digits number of decimal places
#' @param ... dots
#' @export
pretty_breaks <- function(n = 5, digits = 0, ...) {
  force_all(n, ...)
  n_default <- n
  function(x, n = n_default) {
    breaks <- pretty(x, n, ...)
    names(breaks) <- format_nor(breaks, digits = digits)
    breaks
  }
}

#' format_nor_perc_0
#' Formats as a norwegian number with 0 digits and puts a % sign afterwards.
#' Useful for scale labels
#' @param x value
#' @export
format_nor_perc_0 <- function(x) paste0(fhiplot::format_nor(x, digits = 0), "%")

#' format_nor_perc_1
#' Formats as a norwegian number with 1 digits and puts a % sign afterwards.
#' Useful for scale labels
#' @param x value
#' @export
format_nor_perc_1 <- function(x) paste0(fhiplot::format_nor(x, digits = 1), "%")
