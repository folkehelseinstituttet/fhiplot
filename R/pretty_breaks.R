#' format_nor
#' @param x value
#' @param digits digits
#' @export
format_nor <- function (x, digits = 0){
  return(formatC(x,big.mark=".", decimal.mark = ",", format="f", digits=digits))
}

#' pretty_breaks
#' @param n a
#' @export
pretty_breaks <- function(n = 5, digits = 0, ...){
  force_all(n, ...)
  n_default <- n
  function(x, n = n_default) {
    breaks <- pretty(x, n, ...)
    names(breaks) <- format_nor(breaks, digits = digits)
    breaks
  }
}
