#' Analysis Function colour palette function
#'
#' Generate a colour palette based on the selected chart and colour_format type (hex/rgb/names).
#'
#' @param type Name of required palette. Choices are:
#'   \code{categorical}, \code{duo},  \code{sequential},
#'   \code{focus}
#' @param colour_format Type of colour code to return. Choices are:
#'   \code{hex}, \code{rgb}, \code{names}
#'   If omitted, returns hex code
#' @param n Number of colours to return for categorical palette type (max 6).
#'   If omitted, uses all colours.
#' @return A vector of colour codes
#' @import
#'   dplyr
#' @export
#' @keywords colours
#' @example   ggplot(aes(x = x, y = y, colour = z)) +
#'            geom_point() +
#'            scale_colour_manual(values = af_colours("duo"))

af_colours <- function(type = c("categorical", "duo", "sequential", "focus"), colour_format = "hex", n = 6) {

  tryCatch(
    expr = {
      type <- match.arg(type)
    },
    error = function(e){
      stop(paste0(type, " is not an available palette option. Please select either 'categorical', 'duo', 'sequential', or 'focus'."))
    }
  )

  if (!(colour_format %in% c("hex", "rgb", "names"))){
    stop(paste0(colour_format, " is not an available colour format option. Please select either 'hex', 'rgb', or 'names'."))
  }


  if (type == "categorical" && n > 6){
    stop("The number of colours (n) must not be more than 6 for the categorical palette.")
  }

  if (type == "categorical" && n == 2){
    type  <- "duo"
  }

  palette <- palette_picker(type, tolower(colour_format))

  if (n > length(palette)){
    message("Warning: list of colours returned is shorter than number of colours requested. Consult guidance to ensure correct palette chosen.")
  }

  if (n < length(palette)){
    message("Warning: list of colours returned is longer than number of colours requested. Consult guidance to ensure correct palette chosen.")
  }

  if (type != "categorical"){
    n <- length(palette)
  }

  if (n > 2){
    message("Line charts using more than two colours may not be accessible to all users")
  }

  head(palette, n)

}
