#' CSS for htmltable table
#' @export htmltable_css_table
htmltable_css_table <- "width: 100%;"

#' CSS for htmltable header
#' @param fontsize fontsize
#' @param border_top Border top style
#' @export htmltable_css_header
htmltable_css_header <- function(fontsize = 16, border_top = "2px solid grey") {
  retval <- glue::glue("font-size: {fontsize}px; font-weight: bold; border-top: {border_top};")
  retval
}

#' CSS for htmltable cell
#' @param fontsize fontsize
#' @param border_bottom Border bottom style
htmltable_css_cell <- function(fontsize = 14, border_bottom = "1px dashed grey") {
  retval <- glue::glue("padding-left: .4em; padding-right: .2em; padding-top: .4em; padding-bottom: .4em; font-size: {fontsize}px; border-bottom: {border_bottom};")
}

#' CSS for htmltable cell with a risk scale from 1-5
#' @param x Risk value
#' @param fontsize fontsize
#' @param max_risk_value Max risk value
#' @export
htmltable_css_risk_1_5 <- function(x, fontsize = 14, max_risk_value = 5) {
  stopifnot(x %in% 1:5)
  color <- fhi_pal("map_seq_complete", direction = -1)(max_risk_value)[x]
  retval <- htmltable_css_cell(fontsize = fontsize)
  retval <- glue::glue("{retval} background-color: {color};")
  if (x >= 4) retval <- paste0(retval, "color: white;")
  return(retval)
}
