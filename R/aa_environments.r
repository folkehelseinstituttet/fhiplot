#' Colors
#' @export vals
vals <- new.env(parent = emptyenv())

vals$cols <- list()

vals$cols$primary <- c(
  "B1" = "#393C61",
  "B2" = "#0F6986",
  "B3" = "#4A9DAB",
  "B4" = "#38BCD7",
  "B5" = "#93CAE3",
  "B6" = "#92B147"
)

vals$cols$secondary <- c(
  "R1" = "#6A1445",
  "R2" = "#B10640",
  "R3" = "#ED6F67",
  "R4" = "#F8B766"
)

vals$cols$neutral <- c(
  "X1" = "#38474E",
  "X2" = "#556E7A",
  "X3" = "#79909A",
  "X4" = "#ABB9C1",
  "X5" = "#CFD8DB"
)

vals$cols$map_sequential <- c(
  "MS1" = "#0F6896",
  "MS2" = "#4486A8",
  "MS3" = "#6FA5BA",
  "MS4" = "#9BC3CE",
  "MS5" = "#C8E1E4"
)

vals$cols$map_divergent <- c(
  "MD1" = "#C95851",
  "MD2" = "#E6655C",
  "MD3" = "#EE8A7F",
  "MD4" = "#F3ACA3"
)


vals$pals <- list()

vals$pals$map_seq_complete_1 <- vals$cols$map_sequential[1]
vals$pals$map_seq_complete_2 <- vals$cols$map_sequential[c(1, 5)]
vals$pals$map_seq_complete_3 <- vals$cols$map_sequential[c(1, 3, 5)]
vals$pals$map_seq_complete_4 <- vals$cols$map_sequential[c(1, 2, 4, 5)]
vals$pals$map_seq_complete_5 <- vals$cols$map_sequential[c(1, 2, 3, 4, 5)]

vals$pals$map_seq_missing_1 <- vals$cols$primary["B6"]
vals$pals$map_seq_missing_2 <- c(vals$cols$map_sequential[1], vals$cols$primary["B6"])
vals$pals$map_seq_missing_3 <- c(vals$cols$map_sequential[c(1, 5)], vals$cols$primary["B6"])
vals$pals$map_seq_missing_4 <- c(vals$cols$map_sequential[c(1, 3, 5)], vals$cols$primary["B6"])
vals$pals$map_seq_missing_5 <- c(vals$cols$map_sequential[c(1, 2, 4, 5)], vals$cols$primary["B6"])
vals$pals$map_seq_missing_6 <- c(vals$cols$map_sequential[c(1, 2, 3, 4, 5)], vals$cols$primary["B6"])

vals$pals$map_div_complete_1 <- c(
  vals$cols$map_sequential["MS1"]
)
vals$pals$map_div_complete_2 <- c(
  vals$cols$map_sequential["MS1"],
  vals$cols$map_divergent["MD1"]
)
vals$pals$map_div_complete_3 <- c(
  vals$cols$map_sequential["MS1"],
  vals$cols$neutral["X4"],
  vals$cols$map_divergent["MD1"]
)
vals$pals$map_div_complete_4 <- c(
  vals$cols$map_sequential["MS1"],
  vals$cols$map_sequential["MS2"],
  vals$cols$map_divergent["MD2"],
  vals$cols$map_divergent["MD1"]
)
vals$pals$map_div_complete_5 <- c(
  vals$cols$map_sequential["MS1"],
  vals$cols$map_sequential["MS2"],
  vals$cols$neutral["X4"],
  vals$cols$map_divergent["MD2"],
  vals$cols$map_divergent["MD1"]
)

vals$pals$map_div_missing_1 <- c(
  vals$cols$map_sequential["MS1"]
)
vals$pals$map_div_missing_2 <- c(
  vals$cols$map_sequential["MS1"],
  vals$cols$primary["B6"]
)
vals$pals$map_div_missing_3 <- c(
  vals$cols$map_sequential["MS1"],
  vals$cols$map_divergent["MD1"],
  vals$cols$primary["B6"]
)
vals$pals$map_div_missing_4 <- c(
  vals$cols$map_sequential["MS1"],
  vals$cols$neutral["X4"],
  vals$cols$map_divergent["MD1"],
  vals$cols$primary["B6"]
)
vals$pals$map_div_missing_5 <- c(
  vals$cols$map_sequential["MS1"],
  vals$cols$map_sequential["MS2"],
  vals$cols$map_divergent["MD2"],
  vals$cols$map_divergent["MD1"],
  vals$cols$primary["B6"]
)
vals$pals$map_div_missing_6 <- c(
  vals$cols$map_sequential["MS1"],
  vals$cols$map_sequential["MS2"],
  vals$cols$neutral["X4"],
  vals$cols$map_divergent["MD2"],
  vals$cols$map_divergent["MD1"],
  vals$cols$primary["B6"]
)

vals$pals$primary_1 <- vals$cols$primary[1]
vals$pals$primary_2 <- vals$cols$primary[c(1:2)]
vals$pals$primary_3 <- vals$cols$primary[c(1:3)]
vals$pals$primary_4 <- vals$cols$primary[c(1:4)]
vals$pals$primary_5 <- vals$cols$primary[c(1:4, 6)]

vals$pals$contrast_1 <- c(
  vals$cols$primary["B2"]
)
vals$pals$contrast_2 <- c(
  vals$cols$primary["B2"],
  vals$cols$secondary["R2"]
)
vals$pals$contrast_3 <- c(
  vals$cols$primary["B2"],
  vals$cols$neutral["X4"],
  vals$cols$secondary["R2"]
)
vals$pals$contrast_4 <- c(
  vals$cols$primary["B2"],
  vals$cols$primary["B3"],
  vals$cols$secondary["R3"],
  vals$cols$secondary["R2"]
)
vals$pals$contrast_5 <- c(
  vals$cols$primary["B2"],
  vals$cols$primary["B3"],
  vals$cols$neutral["X4"],
  vals$cols$secondary["R3"],
  vals$cols$secondary["R2"]
)

vals$pals$combination_1 <- c(vals$cols$primary["B2"])
vals$pals$combination_2 <- c(
  vals$cols$primary["B2"],
  vals$cols$secondary["R2"]
)
vals$pals$combination_3 <- c(
  vals$cols$primary["B2"],
  vals$cols$secondary["R2"],
  vals$cols$primary["B4"]
)
vals$pals$combination_4 <- c(
  vals$cols$primary["B2"],
  vals$cols$secondary["R2"],
  vals$cols$primary["B4"],
  vals$cols$secondary["R4"]
)
vals$pals$combination_5 <- c(
  vals$cols$primary["B2"],
  vals$cols$secondary["R2"],
  vals$cols$primary["B4"],
  vals$cols$secondary["R4"],
  vals$cols$primary["B6"]
)

vals$palettes <- c(
  "map_seq_complete",
  "map_seq_missing",
  "map_div_complete",
  "map_div_missing",
  "primary",
  "contrast",
  "combination"
)
