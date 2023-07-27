#' Palette selection and return
#'
#' Used in the af_colours function. Returns a vector of the required colour codes from the palette selected in the input "type"
#'
#' @param type type of palette required (categorical, duo, sequential, focus)
#' @param colour_format type of colour format required (hex, rgb), default is hex
#'
#' @returns vector of the required type of colour code  from the required palette
#'
#' @examples afcolours:::palette_picker(type = "categorical", colour_format = "rgb")


palette_picker <- function(type, colour_format = "hex") {

  palette <- palettes[[type]]

  if (colour_format == "rgb") {
    palette <- t(grDevices::col2rgb(palette))
  }

  return(palette)

}
