#' theme_fhi_basic
#' @param base_size a
#' @param base_family a
#' @param base_line_size a
#' @param base_rect_size a
#' @param legend_position a
#' @export
theme_fhi_basic <- function(base_size = 12,
                            base_family = "",
                            base_line_size = base_size / 22,
                            base_rect_size = base_size / 22,
                            legend_position = "right") {
  half_line <- base_size / 2

  # sysfonts::font_add_google("IBM Plex Sans")
  # sysfonts::font_add_google("MS Comic Sans")

  retval <- theme_bw(
    base_size = base_size,
    base_family = base_family,
    base_line_size = base_line_size,
    base_rect_size = base_rect_size
  ) %+replace%
    theme(
      axis.text = element_text(colour = "black", size = rel(0.8)),
      axis.ticks = element_line(colour = "black", size = rel(0.5)),
      axis.ticks.length = unit(rel(.25), "cm"),
      axis.title.x = element_text(margin = margin(t = base_size), vjust = 1),
      axis.title.y = element_text(angle = 90, margin = margin(r = base_size), vjust = 1),
      axis.line = element_line(colour = "black", size = rel(1)),
      panel.border = element_rect(
        fill = NA,
        colour = NA,
        size = rel(1)
      ),
      strip.background = element_rect(colour = "white", fill = "white"),
      panel.grid = element_blank(),
      complete = TRUE
    )

  if(legend_position=="bottom"){
    retval <- retval %+replace%
      theme(
        legend.position = "bottom",
        legend.direction = "horizontal"
      )
  }

  return(retval)
}

#' theme_fhi_basic
#' @param base_size a
#' @param base_family a
#' @param base_line_size a
#' @param base_rect_size a
#' @param panel_on_top a
#' @param legend_position a
#' @export
theme_fhi_lines <- function(base_size = 12,
                            base_family = "",
                            base_line_size = base_size / 22,
                            base_rect_size = base_size / 22,
                            legend_position = "right",
                            panel_on_top = TRUE) {
  retval <- theme_fhi_basic(
    base_size = base_size,
    base_family = base_family,
    base_line_size = base_line_size,
    base_rect_size = base_rect_size,
    legend_position = legend_position
  ) %+replace%
    theme(
      panel.background = element_rect(fill = NA, colour = NA),
      panel.grid = element_line(),
      panel.grid.major = element_line(colour = "black", size = rel(0.1)),
      panel.grid.minor = element_line(colour = "black", size = rel(0.05)),
      complete = TRUE
    )

  if (panel_on_top) {
    retval <- retval %+replace%
      theme(
        panel.background = element_rect(fill = NA, colour = NA),
        panel.ontop = TRUE
      )
  }

  return(retval)
}
