#' A treshold chart of the type used for influenza
#'
#' @param data A data.table for a season of influenza
#' @param title the title for the chart
#' @param lang language of labels
#'
#' @import ggplot2
#' @export make_influenza_threshold_chart
make_influenza_threshold_chart <- function(data, title, lang = "NB") {
  week <- NULL
  low <- NULL
  medium <- NULL
  high <- NULL
  very_high <- NULL
  rate <- NULL
  max_week <- max(data[, week])
  data$week <- factor(data$week, levels = data$week)


  if (lang == "EN") {
    label_very_low <- "Very low"
    label_low <- "Low"
    label_med <- "Medium"
    label_high <- "High"
    label_very_high <- "Very High"
    ylab <- "% of patients with ILI"
  } else if (lang == "NB") {
    label_very_low <- "Sv\u00E6rt lav"
    label_low <- "Lav"
    label_med <- "Middels"
    label_high <- "H\u00F8y"
    label_very_high <- "Sv\u00E6rt h\u00F8y"
    ylab <- "% pasienter med ILS"
  }
  q <- ggplot(data) +
    theme_fhi_lines() +
    geom_ribbon(aes(x = week, ymin = very_high, ymax = very_high * 1.1, fill = "l5", group = 1), alpha = 1) +
    geom_ribbon(aes(x = week, ymin = high, ymax = very_high, fill = "l4", group = 1), alpha = 1) +
    geom_ribbon(aes(x = week, ymin = medium, ymax = high, fill = "l3", group = 1), alpha = 1) +
    geom_ribbon(aes(x = week, ymin = low, ymax = medium, fill = "l2", group = 1), alpha = 1) +
    geom_ribbon(aes(x = week, ymin = 0, ymax = low, fill = "l1", group = 1), alpha = 0.5) +
    scale_fill_fhi("Level",
      labels = c(
        "l1" = label_very_low, "l2" = label_low, "l3" = label_med,
        "l4" = label_high, "l5" = label_very_high
      ),
      palette = "map_seq_complete", direction = -1
    ) +

    geom_line(aes(x = week, y = rate, group = 1)) +
    geom_point(aes(x = week, y = rate, group = 1)) +
    ggtitle(title) +
    ylab(ylab) +
    scale_y_continuous(
      limits = c(0, max(data[, very_high]) * 1.1),
      expand = expand_scale(mult = c(0, 0))
    ) +
    guides(fill = guide_legend(reverse = TRUE)) +
    scale_x_discrete(expand = expand_scale(mult = c(0, 0))) + theme(
      panel.background = element_rect(fill = NA),
      panel.ontop = TRUE
    )
  return(q)
}
