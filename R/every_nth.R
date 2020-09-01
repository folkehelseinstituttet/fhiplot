#' every_nth
#' Useful for plotting every nth discrete value in ggplot2
#' @param n nth discrete value
#' @examples
#' \dontrun{
#' scale_x_discrete(NULL, breaks = every_nth(n = 2))
#' }
#' @export
every_nth <- function(n) {
  force(n)
  return(function(x) {
    x[c(TRUE, rep(FALSE, n - 1))]
  })
}
