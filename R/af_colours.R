#' Analysis Function colour palette function
#'
#' Generate a colour palette based on the selected chart and colour_format type (hex/rgb).
#'
#' @param palette Name of required palette. Choices are:
#'   \code{categorical}, \code{duo},  \code{sequential},
#'   \code{focus}
#' @param colour_format Type of colour code to return. Choices are:
#'   \code{hex}, \code{rgb}
#'   If omitted, returns hex code
#' @param n Number of colours to return for categorical palette type (max 6).
#'   If omitted, uses all colours.
#' @return A vector of colour codes
#' @import
#'   dplyr
#' @export
#' @keywords colours
#' @example ggplot(aes(x = x, y = y, colour = z)) + geom_point() + scale_colour_manual(values = af_colours("duo"))

af_colours <- function(palette = c("categorical", "duo", "sequential", "focus"), colour_format = "hex", n = 6) {

  tryCatch(
    expr = {
      palette <- match.arg(palette)
    },
    error = function(e){
      stop(paste0(palette, " is not an available palette option. Please select either 'categorical', 'duo', 'sequential', or 'focus'."))
    }
  )

  if (!(colour_format %in% c("hex", "rgb", "names"))){
    stop(paste0(colour_format, " is not an available colour format option. Please select either 'hex', 'rgb', or 'names'."))
  }


  if (palette == "categorical" && n > 6){
    stop("The number of colours (n) must not be more than 6 for the categorical palette.")
  }

  if (palette == "categorical" && n <= 0){
    stop("The number of colours (n) must be more than 0 for the categorical palette.")
  }

  if (palette == "categorical" && n == 2){
    palette  <- "duo"
  }

  p <- palette_picker(palette, tolower(colour_format))

  palette_length <- ifelse(colour_format == "hex",
                           length(p),
                           nrow(p))

  if (palette != "categorical"){
    if (n != 6){
      message("Warning: list of colours returned may be different than the colours requested. Consult guidance to ensure correct palette chosen.")
    }
    n <- palette_length
  }

  if (n > 4){
    message("Line charts using more than 4 colours may not be accessible to all users.")
  }

  head(p, n)

}
