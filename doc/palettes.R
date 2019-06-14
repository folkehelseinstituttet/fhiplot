## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ------------------------------------------------------------------------
library(ggplot2)
library(fhiplot)

## ------------------------------------------------------------------------
fhiplot::Display_All_Palettes()

## ------------------------------------------------------------------------
pd <- fhidata::get_data("norway_map_counties")
data <- unique(pd[,c("location_code")])
suppressWarnings(data[,category:=rep(c("Good","Normal","Neutral","Bad","Very Bad"),each=4)])
data[,category:=factor(category,levels=c("Good","Normal","Neutral","Bad","Very Bad"))]
pd[data,on="location_code",category:=category]

## ------------------------------------------------------------------------
q <- ggplot()
q <- q + geom_polygon(data = pd, aes( x = long, y = lat, group = group, fill=category), color="black", size=0.25)
q <- q + theme_void()
q <- q + coord_quickmap()
q <- q + fhiplot::scale_fill_fhi("Category",palette = "map_div", direction = 1)
q

## ------------------------------------------------------------------------
q <- ggplot()
q <- q + geom_polygon(data = pd, aes( x = long, y = lat, group = group, fill=category), color="black", size=0.25)
q <- q + theme_void()
q <- q + coord_quickmap()
q <- q + fhiplot::scale_fill_fhi("Category",palette = "map_seq", direction = 1)
q

## ------------------------------------------------------------------------
q <- ggplot(diamonds[1:200,], aes(carat, depth, color = cut))
q <- q + geom_point(size = 4)
q <- q + theme_classic()
q <- q + fhiplot::scale_color_fhi(palette = "combination")
q <- q + labs(title="Palette: 'combination'")
q

## ------------------------------------------------------------------------
q <- ggplot(diamonds[1:200,], aes(carat, depth, color = cut))
q <- q + geom_point(size = 4)
q <- q + theme_classic()
q <- q + fhiplot::scale_color_fhi(palette = "contrast")
q <- q + labs(title="Palette: 'contrast'")
q

## ------------------------------------------------------------------------
q <- ggplot(diamonds[1:200,], aes(carat, depth, color = cut))
q <- q + geom_point(size = 4)
q <- q + theme_classic()
q <- q + fhiplot::scale_color_fhi(palette = "contrast")
q <- q + labs(title="Palette: 'primary'")
q

## ------------------------------------------------------------------------
q <- ggplot(diamonds, aes(x=color, fill = cut))
q <- q + theme_classic()
q <- q + geom_bar()
q <- q + fhiplot::scale_color_fhi(palette = "combination")
q <- q + labs(title="Palette: 'combination'")
q

## ------------------------------------------------------------------------
q <- ggplot(diamonds, aes(x=color, fill = cut))
q <- q + theme_classic()
q <- q + geom_bar()
q <- q + fhiplot::scale_color_fhi(palette = "contrast")
q <- q + labs(title="Palette: 'contrast'")
q

## ------------------------------------------------------------------------
q <- ggplot(diamonds, aes(x=color, fill = cut))
q <- q + theme_classic()
q <- q + geom_bar()
q <- q + fhiplot::scale_color_fhi(palette = "contrast")
q <- q + labs(title="Palette: 'primary'")
q

