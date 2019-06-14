## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ------------------------------------------------------------------------
library(ggplot2)
library(fhiplot)

## ------------------------------------------------------------------------
q <- ggplot(diamonds[1:200,], aes(carat, depth, color = cut))
q <- q + geom_point(size = 4)
q <- q + theme_fhi_basic()
q <- q + fhiplot::scale_color_fhi(palette = "contrast")
q <- q + labs(title="Theme: 'theme_fhi_basic'")
q

## ------------------------------------------------------------------------
q <- ggplot(diamonds[1:200,], aes(carat, depth, color = cut))
q <- q + geom_point(size = 4)
q <- q + theme_fhi_lines()
q <- q + fhiplot::scale_color_fhi(palette = "contrast")
q <- q + labs(title="Theme: 'theme_fhi_lines'")
q

## ------------------------------------------------------------------------
q <- ggplot(diamonds, aes(x=color, fill = cut))
q <- q + geom_bar()
q <- q + theme_fhi_basic()
q <- q + fhiplot::scale_color_fhi(palette = "contrast")
q <- q + labs(title="Theme: 'theme_fhi_basic'")
q

## ------------------------------------------------------------------------
q <- ggplot(diamonds, aes(x=color, fill = cut))
q <- q + geom_bar()
q <- q + theme_fhi_lines()
q <- q + fhiplot::scale_color_fhi(palette = "contrast")
q <- q + labs(title="Theme: 'theme_fhi_lines'")
q
#ggsave(q, filename = "example.png", dpi = 300, type = "cairo",
#       width = 297, height = 210, units = "mm")

