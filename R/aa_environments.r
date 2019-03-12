#' Colors
#' @export vals
vals <- new.env(parent = emptyenv())

vals$cols <- list()

vals$cols$primary <- c(
  "B1"="#393C61",
  "B2"="#0F6986",
  "B3"="#4A9DAB",
  "B4"="#38BCD7",
  "B5"="#93CAE3",
  "B6"="#92B147"
)

vals$cols$secondary <- c(
  "R1"="#6A1445",
  "R2"="#B10640",
  "R3"="#ED6F67",
  "R4"="#F8B766"
)

vals$cols$neutral <- c(
  "X1"="#38474E",
  "X2"="#556E7A",
  "X3"="#79909A",
  "X4"="#ABB9C1",
  "X5"="#CFD8DB"
)

vals$cols$map_sequential <- c(
  "MS1"="#0F6896",
  "MS2"="#4486A8",
  "MS3"="#6FA5BA",
  "MS4"="#9BC3CE",
  "MS5"="#C8E1E4"
)

vals$cols$map_divergent <- c(
  "MD1"="#C95851",
  "MD2"="#E6655C",
  "MD3"="#EE8A7F",
  "MD4"="#F3ACA3"
)


vals$pals <- list()

vals$pals$seq_blue_1 <- vals$cols$map_sequential[1]
vals$pals$seq_blue_2 <- vals$cols$map_sequential[c(1,5)]
vals$pals$seq_blue_3 <- vals$cols$map_sequential[c(1,3,5)]
vals$pals$seq_blue_4 <- vals$cols$map_sequential[c(1,2,4,5)]
vals$pals$seq_blue_5 <- vals$cols$map_sequential[c(1,2,3,4,5)]

vals$pals$div_blue_red_1 <- c(
  vals$cols$primary["B2"]
)
vals$pals$div_blue_red_2 <- c(
  vals$cols$primary["B2"],
  vals$cols$secondary["R2"]
)
vals$pals$div_blue_red_3 <- c(
  vals$cols$primary["B2"],
  vals$cols$neutral["X4"],
  vals$cols$secondary["R2"]
)
vals$pals$div_blue_red_4 <- c(
  vals$cols$primary["B2"],
  vals$cols$primary["B3"],
  vals$cols$secondary["R3"],
  vals$cols$secondary["R2"]
)
vals$pals$div_blue_red_5 <- c(
  vals$cols$primary["B2"],
  vals$cols$primary["B3"],
  vals$cols$neutral["X4"],
  vals$cols$secondary["R3"],
  vals$cols$secondary["R2"]
)

vals$pals$dis_primary_1 <- c(vals$cols$primary["B2"])
vals$pals$dis_primary_2 <- c(
  vals$cols$primary["B2"],
  vals$cols$secondary["R2"]
  )
vals$pals$dis_primary_3 <- c(
  vals$cols$primary["B2"],
  vals$cols$secondary["R2"],
  vals$cols$primary["B4"]
  )
vals$pals$dis_primary_4 <- c(
  vals$cols$primary["B2"],
  vals$cols$secondary["R2"],
  vals$cols$primary["B3"],
  vals$cols$secondary["R3"]
)
vals$pals$dis_primary_5 <- c(
  vals$cols$primary["B2"],
  vals$cols$secondary["R2"],
  vals$cols$primary["B3"],
  vals$cols$secondary["R3"],
  vals$cols$primary["B1"]
)

vals$palettes <- c("seq_blue", "div_blue_red", "dis_primary")
