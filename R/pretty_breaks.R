#' fhi_caption
#' @param caption text
#' @export
fhi_caption <- function(caption = "Folkehelseinstituttet {format_date_nor()}") {
  return(glue::glue(caption))
}

#' format_date_nor
#' @param x value
#' @param format the desired format
#' @export
format_date_nor <- function(x = lubridate::today(), format = "%d.%m.%Y") {
  retval <- format.Date(x, format = format)
  return(retval)
}

#' format_nor
#' @param x value
#' @param digits Number of digits after the decimal place (required)
#' @param sig Number of significant digits (optional)
#' @param break_with_four_digits Whether break with four digits. Default is TRUE (optional)
#' @export
format_nor <- function(x, digits = 0, sig = NULL, break_with_four_digits = T) {
  if (!is.null(sig)) {
    retval <- formatC(signif(x, digits = sig), big.mark = " ", decimal.mark = ",", format = "f", digits = digits)
  } else {
    retval <- formatC(x, big.mark = " ", decimal.mark = ",", format = "f", digits = digits)
  }
  index <- which(x >= 1000 & x < 10000)
  if (length(index) > 0 & break_with_four_digits == F) retval[index] <- stringr::str_remove(retval[index], " ")
  return(retval)
}

#' pretty_breaks
#' @param n a
#' @param digits number of decimal places
#' @param break_with_four_digits Whether break with four digits. Default is TRUE (optional)
#' @param ... dots
#' @export
pretty_breaks <- function(n = 5, digits = 0, break_with_four_digits = T, ...) {
  force_all(n, digits, break_with_four_digits, ...)
  n_default <- n
  function(x, n = n_default) {
    breaks <- pretty(x, n, ...)
    names(breaks) <- format_nor(breaks,
      digits = digits,
      break_with_four_digits = break_with_four_digits
    )
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
