#' Analysis Function colour palette function
#'
#' Generate a colour palette based on the selected chart and colour_format type (hex/rgb).
#'
#' @param type Name of required palette. Choices are:
#'   \code{categorical}, \code{duo},  \code{sequential},
#'   \code{focus}
#' @param colour_format Type of colour code to return. Choices are:
#'   \code{hex}, \code{rgb}
#'   If omitted, returns hex code
#' @param n Number of colours to return for categorical palette type (max 6).
#'   If omitted, uses all colours.
#' @param verbose Option to stop function producing messages to the console.
#' @returns A vector of colour codes
#' @import
#'   dplyr
#' @export
#' @keywords colours
#' @examples
#' data <- data.frame(
#'   x = c(1, 2),
#'   y = c(1, 2),
#'   z = c("a", "b")
#' )
#' ggplot2::ggplot(data, ggplot2::aes(x = x, y = y, colour = z)) +
#'   ggplot2::geom_point() +
#'   ggplot2::scale_colour_manual(values = af_colours("duo"))
af_colours <- function(type = c("categorical", "duo", "sequential", "focus"),
                       colour_format = "hex",
                       n = 6,
                       verbose = TRUE) {
  tryCatch(
    expr = {
      type <- match.arg(type)
    },
    error = function(e) {
      stop(paste0(type, " is not an available palette option. Please select either 'categorical', 'duo', 'sequential', or 'focus'."))
    }
  )

  if (!(colour_format %in% c("hex", "rgb"))) {
    stop(paste0(colour_format, " is not an available colour format option. Please select either 'hex' or 'rgb'."))
  }


  if (type == "categorical") {
    if (n > 6) {
      stop("The number of colours (n) must not be more than 6 for the categorical palette.")
    }

    if (n <= 0) {
      stop("The number of colours (n) must be more than 0 for the categorical palette.")
    }

    if (n > 4 & verbose) {
      message("It is best practice to limit to four categories when using the categorical palette so the chart does not become too cluttered.")
    }

    if (n == 2) {
      type <- "duo"
    }
  } else if (type == "sequential" & verbose) {
    message("This palette should only be used for sequential data and please ensure you give all bars a dark blue outline if you are creating a bar chart.")
  } else if (type == "focus" & verbose) {
    message("This palette should only be used to highlight specific elements to help users understand the information.")
  }

  palette <- palette_types[[type]]

  palette_length <- length(palette)

  if (colour_format == "rgb") {
    palette <- t(grDevices::col2rgb(palette))
  }

  if (type != "categorical") {
    if (n != 6 & verbose) {
      message("Warning: list of colours returned may be different than the colours requested. Consult guidance to ensure correct palette chosen.")
    }
    n <- palette_length
  }

  utils::head(palette, n)
}
