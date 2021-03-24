#' Excel style for title
#' @export
excel_style_title <- openxlsx::createStyle(fontSize = 14, textDecoration = "bold")

#' Excel style for number with 0 decimal places
#' @export
excel_style_num_0 <- openxlsx::createStyle(numFmt="0")

#' Excel style for number with 1 decimal places
#' @export
excel_style_num_1 <- openxlsx::createStyle(numFmt="0.0")

#' Excel style for percentage (0-1) with 0 decimal places
#' @export
excel_style_prop_to_perc_0 <- openxlsx::createStyle(numFmt="0%")

#' Excel style for percentage (0-1) with 1 decimal places
#' @export
excel_style_prop_to_perc_1 <- openxlsx::createStyle(numFmt="0.0%")

#' Excel style for htmltable cell with a risk scale from 1-5
#' @param x Risk value
#' @param max_risk_value Max risk value
#' @param palette blue/red
#' @export
excel_style_risk_1_5 <- function(x, max_risk_value = 5, palette = "blue") {
  stopifnot(x %in% 1:5)
  stopifnot(palette %in% c("blue", "red"))
  color <- fhi_pal(palette, direction = 1)(max_risk_value)[x]
  if (x >= 4){
    retval <- openxlsx::createStyle(fgFill = color, fontColour = "white")
  } else {
    retval <- openxlsx::createStyle(fgFill = color)
  }
  return(retval)
}

#' Excel style for yellow background
#' @export
excel_style_background_yellow <- excel_style_risk_1_5(3, palette = "red")

#' Excel style for red background
#' @export
excel_style_background_red <- excel_style_risk_1_5(5, palette = "red")
