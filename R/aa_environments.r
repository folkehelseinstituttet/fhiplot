#' Colors
vals <- new.env()

vals$cols <- list()

vals$cols$v2$primary <- c(
  "H1" = "#393C61",
  "H2" = "#0975B5",
  "H3" = "#2EA1C0",
  "H4" = "#709900",
  "H5" = "#B11643",
  "H6" = "#FC5F56",
  "H7" = "#F7B500"
)

vals$cols$v2$neutral <- c(
  "S1" = "#3C515E",
  "S2" = "#566F7B",
  "S3" = "#A9B7BF",
  "S4" = "#C5D0D4"
)

vals$cols$v2$map_sequential <- c(
  "MS1" = "#045a8d",
  "MS2" = "#467fa9",
  "MS3" = "#76a5c4",
  "MS4" = "#9fcfef",
  "MS5" = "#c5dcdf"
)

vals$cols$v2$map_divergent <- c(
  "MD1" = "#2c6300",
  "MD2" = "#4d7e13",
  "MD3" = "#6d9926",
  "MD4" = "#aed267"
)

vals$cols$v1$primary <- c(
  "B1" = "#393C61",
  "B2" = "#0F6986",
  "B3" = "#4A9DAB",
  "B4" = "#38BCD7",
  "B5" = "#93CAE3",
  "B6" = "#92B147"
)

vals$cols$v1$secondary <- c(
  "R1" = "#6A1445",
  "R2" = "#B10640",
  "R3" = "#ED6F67",
  "R4" = "#F8B766",
  "R5" = "#FEE090"
)

vals$cols$v1$neutral <- c(
  "X1" = "#38474E",
  "X2" = "#556E7A",
  "X3" = "#79909A",
  "X4" = "#ABB9C1",
  "X5" = "#CFD8DB"
)

vals$cols$v1$map_sequential <- c(
  "MS1" = "#0F6896",
  "MS2" = "#4486A8",
  "MS3" = "#6FA5BA",
  "MS4" = "#9BC3CE",
  "MS5" = "#C8E1E4"
)

vals$cols$v1$map_divergent <- c(
  "MD1" = "#C95851",
  "MD2" = "#E6655C",
  "MD3" = "#EE8A7F",
  "MD4" = "#F3ACA3"
)


vals$pals <- list()

vals$pals$map_seq_complete_1 <- vals$cols$v2$map_sequential[1]
vals$pals$map_seq_complete_2 <- vals$cols$v2$map_sequential[c(1, 5)]
vals$pals$map_seq_complete_3 <- vals$cols$v2$map_sequential[c(1, 3, 5)]
vals$pals$map_seq_complete_4 <- vals$cols$v2$map_sequential[c(1, 2, 4, 5)]
vals$pals$map_seq_complete_5 <- vals$cols$v2$map_sequential[c(1, 2, 3, 4, 5)]

vals$pals$map_seq_missing_1 <- vals$cols$v2$primary["H7"]
vals$pals$map_seq_missing_2 <- c(vals$cols$v2$map_sequential[1], vals$cols$v2$primary["H7"])
vals$pals$map_seq_missing_3 <- c(vals$cols$v2$map_sequential[c(1, 5)], vals$cols$v2$primary["H7"])
vals$pals$map_seq_missing_4 <- c(vals$cols$v2$map_sequential[c(1, 3, 5)], vals$cols$v2$primary["H7"])
vals$pals$map_seq_missing_5 <- c(vals$cols$v2$map_sequential[c(1, 2, 4, 5)], vals$cols$v2$primary["H7"])
vals$pals$map_seq_missing_6 <- c(vals$cols$v2$map_sequential[c(1, 2, 3, 4, 5)], vals$cols$v2$primary["H7"])

vals$pals$map_div_complete_1 <- c(
  vals$cols$v2$map_sequential["MS1"]
)
vals$pals$map_div_complete_2 <- c(
  vals$cols$v2$map_sequential["MS1"],
  vals$cols$v2$map_divergent["MD1"]
)
vals$pals$map_div_complete_3 <- c(
  vals$cols$v2$map_sequential["MS1"],
  vals$cols$v2$neutral["S3"],
  vals$cols$v2$map_divergent["MD1"]
)
vals$pals$map_div_complete_4 <- c(
  vals$cols$v2$map_sequential["MS1"],
  vals$cols$v2$map_sequential["MS2"],
  vals$cols$v2$map_divergent["MD2"],
  vals$cols$v2$map_divergent["MD1"]
)
vals$pals$map_div_complete_5 <- c(
  vals$cols$v2$map_sequential["MS1"],
  vals$cols$v2$map_sequential["MS2"],
  vals$cols$v2$neutral["S3"],
  vals$cols$v2$map_divergent["MD2"],
  vals$cols$v2$map_divergent["MD1"]
)

vals$pals$map_div_missing_1 <- c(
  vals$cols$v2$map_sequential["MS1"]
)
vals$pals$map_div_missing_2 <- c(
  vals$cols$v2$map_sequential["MS1"],
  vals$cols$v2$primary["H7"]
)
vals$pals$map_div_missing_3 <- c(
  vals$cols$v2$map_sequential["MS1"],
  vals$cols$v2$map_divergent["MD1"],
  vals$cols$v2$primary["H7"]
)
vals$pals$map_div_missing_4 <- c(
  vals$cols$v2$map_sequential["MS1"],
  vals$cols$v2$neutral["S3"],
  vals$cols$v2$map_divergent["MD1"],
  vals$cols$v2$primary["H7"]
)
vals$pals$map_div_missing_5 <- c(
  vals$cols$v2$map_sequential["MS1"],
  vals$cols$v2$map_sequential["MS2"],
  vals$cols$v2$map_divergent["MD2"],
  vals$cols$v2$map_divergent["MD1"],
  vals$cols$v2$primary["H7"]
)
vals$pals$map_div_missing_6 <- c(
  vals$cols$v2$map_sequential["MS1"],
  vals$cols$v2$map_sequential["MS2"],
  vals$cols$v2$neutral["S3"],
  vals$cols$v2$map_divergent["MD2"],
  vals$cols$v2$map_divergent["MD1"],
  vals$cols$v2$primary["H7"]
)

vals$pals$primary_1 <- c(
  vals$cols$v2$primary["H2"]
)
vals$pals$primary_2 <- c(
  vals$pals$primary_1,
  vals$cols$v2$primary["H4"]
)
vals$pals$primary_3 <- c(
  vals$pals$primary_2,
  vals$cols$v2$primary["H1"]
)
vals$pals$primary_4 <- c(
  vals$pals$primary_3,
  vals$cols$v2$primary["H6"]
)
vals$pals$primary_5 <- c(
  vals$pals$primary_4,
  vals$cols$v2$primary["H3"]
)
vals$pals$primary_6 <- c(
  vals$pals$primary_5,
  vals$cols$v2$primary["H5"]
)
vals$pals$primary_7 <- c(
  vals$pals$primary_6,
  vals$cols$v2$primary["H7"]
)
vals$pals$primary_8 <- c(
  vals$pals$primary_7,
  vals$cols$v2$neutral["S3"]
)
vals$pals$primary_9 <- c(
  vals$pals$primary_8,
  vals$cols$v2$neutral["S1"]
)
vals$pals$primary_10 <- c(
  vals$pals$primary_9,
  vals$cols$v2$neutral["S4"]
)
vals$pals$primary_11 <- c(
  vals$pals$primary_10,
  vals$cols$v2$neutral["S2"]
)

vals$pals$contrast_1 <- c(
  vals$cols$v1$primary["B2"]
)
vals$pals$contrast_2 <- c(
  vals$cols$v1$primary["B2"],
  vals$cols$v1$secondary["R2"]
)
vals$pals$contrast_3 <- c(
  vals$cols$v1$primary["B2"],
  vals$cols$v1$neutral["X4"],
  vals$cols$v1$secondary["R2"]
)
vals$pals$contrast_4 <- c(
  vals$cols$v1$primary["B2"],
  vals$cols$v1$primary["B3"],
  vals$cols$v1$secondary["R3"],
  vals$cols$v1$secondary["R2"]
)
vals$pals$contrast_5 <- c(
  vals$cols$v1$primary["B2"],
  vals$cols$v1$primary["B3"],
  vals$cols$v1$neutral["X4"],
  vals$cols$v1$secondary["R3"],
  vals$cols$v1$secondary["R2"]
)

vals$pals$combination_1 <- c(
  vals$cols$v1$primary["B2"]
  )
vals$pals$combination_2 <- c(
  vals$cols$v1$primary["B2"],
  vals$cols$v1$secondary["R2"]
)
vals$pals$combination_3 <- c(
  vals$cols$v1$primary["B2"],
  vals$cols$v1$secondary["R2"],
  vals$cols$v1$primary["B4"]
)
vals$pals$combination_4 <- c(
  vals$cols$v1$primary["B2"],
  vals$cols$v1$secondary["R2"],
  vals$cols$v1$primary["B4"],
  vals$cols$v1$secondary["R4"]
)
vals$pals$combination_5 <- c(
  vals$cols$v1$primary["B2"],
  vals$cols$v1$secondary["R2"],
  vals$cols$v1$primary["B4"],
  vals$cols$v1$secondary["R4"],
  vals$cols$v1$primary["B6"]
)

vals$palettes <- c(
  "map_seq_complete",
  "map_seq_missing",
  "map_div_complete",
  "map_div_missing",
  "contrast",
  "combination",
  "primary"
)

#' Base color
#' @export base_color
base_color <- vals$cols$v2$neutral["S1"]

#' Warning color
#' @export warning_color
warning_color <- c(
  "low" = vals$cols$v2$primary["H3"],
  "med" = vals$cols$v2$primary["H7"],
  "hig" = vals$cols$v2$primary["H6"]
)
names(warning_color) <- c("low", "med", "hig")
