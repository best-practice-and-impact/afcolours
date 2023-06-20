#' Analysis Function colour palette function
#'
#' Generate a colour palette based on the selected chart and code type (hex/rgb/names).
#'
#' @param type Name of required palette. Choices are:
#'   \code{categorical}, \code{duo},  \code{sequential},
#'   \code{focus}
#' @param n Number of colours to return, required for categorical palette type.
#'   If omitted from other palette types, uses all colours.
#' @param code Type of colour code to return. Choices are:
#'   \code{hex}, \code{rgb}, \code{names}
#'   If omitted, returns hex code
#' @return A vector of colour codes
#' @import
#'   dplyr
#' @export
#' @keywords colours
#' @example   ggplot(aes(x = x, y = y, colour = z)) +
#'            geom_point() +
#'            scale_colour_manual(values = af_colours("duo"))

af_colours <- function(type = c("categorical", "duo", "sequential", "focus"), n, code = "hex") {

  type <- match.arg(type)

  palette <- palette_picker(type, tolower(code))

  if (type == "categorical" && missing(n)){
    stop("Number of colours (n) is required for categorical palette")
  }

  if (type == "categorical" && n == 2){
    palette <- palette_picker("duo", tolower(code))
  }

  if (missing(n) && code == "rgb"){
    n <- nrow(palette)
  }
    else
      if (missing(n)){
    n <- length(palette)
  }

  if (n > length(palette)){
    stop("Not enough colours in this palette")
  }

  if (n > 2){
    message("Line charts using more than two colours may not be accessible to all users")
  }


  head(palette, n)

}


