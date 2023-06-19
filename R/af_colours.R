#' Analysis Function colour palette function
#'
#' Returns selected colour palette as a vector of the selected code type (hex/rgb/cymk).
#'
#' @param type Name of required palette. Choices are:
#'   \code{categorical}, \code{duo},  \code{sequential},
#'   \code{focus}
#' @param n Number of colours to return, required for categorical palette type.
#'   If omitted from other palette types, uses all colours.
#' @param code Type of colour code to return. Choices are:
#'   \code{hex}, \code{rgb}, \code{cymk}
#'   If omitted, returns hex code
#' @return A vector of colours.
#' @import
#'   dplyr
#' @export
#' @keywords colours

af_colours <- function(type = c("categorical", "duo", "sequential", "focus"), n, code = "hex") {

  type <- match.arg(type)

  palette <- palette_picker(type, code)

  if (type == "categorical" && missing(n))
    stop("Number of colours (n) is required for categorical palette")

  if (missing(n)) {
    n <- length(palette)
  }

  if (n > length(palette)) {
    stop("Not enough colours in this palette")
  }

  if (n > 2) {
    message("Line charts using more than two colours may not be accessible to all users")
  }

  palette[1:n]

}

