#' save_a4
#' @param p plot
#' @param filename filename
#' @param landscape landscape dimensions?
#' @export
save_a4 <- function(p, filename, landscape = T){
  if(landscape){
    ggsave(
      filename,
      plot = p,
      width = 297,
      height = 210,
      units = "mm")
  } else {
    ggsave(
      filename,
      plot = p,
      width = 210,
      height = 297,
      units = "mm")
  }
}
