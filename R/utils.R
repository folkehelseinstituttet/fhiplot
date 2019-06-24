# Evaluates all arguments (see #81)
force_all <- function(...) list(...)

#' isoyear_c
#' @param date Date
#' @export
isoyear_c <- function(date) {
  as.character(lubridate::isoyear(date))
}

#' isoyear_n
#' @param date Date
#' @export
isoyear_n <- function(date) {
  lubridate::isoyear(date)
}

#' isoweek_c
#' @param date Date
#' @export
isoweek_c <- function(date) {
  formatC(lubridate::isoweek(date), width = 2, flag = 0)
}

#' isoweek_n
#' @param date Date
#' @export
isoweek_n <- function(date) {
  lubridate::isoweek(date)
}

#' isoyear_isoweek
#' @param date Date
#' @export
isoyear_isoweek <- function(date) {
  c(glue::glue("{isoyear}-{isoweek}", isoyear = lubridate::isoyear(date), isoweek = isoweek_c(date)))
}
