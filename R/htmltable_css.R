#' CSS for htmltable table
#' @export
htmltable_css_table <- function() {
  "width: 100%;"
}

#' CSS for htmltable header
#' @param fontsize fontsize
#' @param border_top Border top style
#' @export
htmltable_css_header <- function(fontsize = 16, border_top = "2px solid grey") {
  retval <- glue::glue("font-size: {fontsize}px; font-weight: bold; border-top: {border_top};")
  retval
}

#' CSS for htmltable cell
#' @param fontsize fontsize
#' @param border_bottom Border bottom style
#' @export
htmltable_css_cell <- function(fontsize = 14, border_bottom = "1px dashed grey") {
  retval <- glue::glue("padding-left: .4em; padding-right: .2em; padding-top: .4em; padding-bottom: .4em; font-size: {fontsize}px; border-bottom: {border_bottom};")
}

htmltable_css_cell_add_width <- function(css_cell, widths) {
  adding <- matrix(paste0("width: ", widths, "%;"), ncol = ncol(css_cell), nrow = nrow(css_cell), byrow = T)
  for (i in 1:ncol(css_cell)) css_cell[, i] <- paste0(css_cell[, i], adding[, i])
  return(css_cell)
}

#' CSS for htmltable header
#' @param tab tab
#' @param widths Vector
#' @export
htmltable_quick_style <- function(tab, widths = rep(round(100 / ncol(tab)), ncol(tab))) {
  css_table <- htmltable_css_table()
  css_rgroup <- css_cgroup <- css_header <- htmltable_css_header()
  css_cell <- matrix(
    htmltable_css_cell(),
    nrow = nrow(tab),
    ncol = ncol(tab)
  )

  css_cell <- htmltable_css_cell_add_width(css_cell, widths)

  ui <- tab %>%
    htmlTable::addHtmlTableStyle(css.table = css_table) %>%
    htmlTable::addHtmlTableStyle(css.cgroup = css_cgroup) %>%
    htmlTable::addHtmlTableStyle(css.header = css_header) %>%
    htmlTable::addHtmlTableStyle(css.rgroup = css_rgroup) %>%
    htmlTable::addHtmlTableStyle(css.cell = css_cell)
  return(ui)
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
