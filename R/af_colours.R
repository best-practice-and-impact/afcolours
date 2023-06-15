#' Analysis Function colour palette parameters
#'
#' List of AF colour palettes for different uses: categorical, duo, sequential and focus. Includes colour name, hex code, rgb code, cymk code.
#' The list order is the order in which colours should be used.

af_palettes <- list(

  categorical = list(colours = c("dark_blue", "turquoise", "dark_pink", "orange", "dark_grey", "light_purple"),
                     hex = c("#12436D", "#28A197", "#801650", "#F46A25", "#3D3D3D", "#A285D1"),
                     rgb = c("(18, 67, 109)", "(40, 161, 151)", "(128, 22, 80)", "(244, 106, 37)", "(61, 61, 61)", "(162, 133, 209)"),
                     cymk = c("(83, 39, 0, 57)", "(75, 0, 6, 37)", "(0, 83, 38, 50)", "(0, 57, 85, 4)", "(0, 0, 0, 76)", "(22, 36, 0, 18)")),
  duo = list(colours = c("dark_blue", "orange"),
             hex = c("#12436D", "#F46A25"),
             rgb = c("(18, 67, 109)", "(244, 106, 37)"),
             cymk = c("(83, 39, 0, 57)", "(83, 39, 0, 57)")),
  sequential = list(colours = c("dark_blue", "mid_blue", "light_blue"),
                    hex = c("#12436D", "#2073BC", "#6BACE6"),
                    rgb = c("(18, 67, 109)", "(32, 115, 188)", "(107, 172, 230)"),
                    cymk = c("(83, 39, 0, 57)", "(83, 39, 0, 26)", "(53, 25, 0, 10)")),
  focus = list(colours = c("dark_blue", "grey"),
               hex = c("#12436D", "#BFBFBF"),
               rgb = c("(18, 67, 109)", "(191, 191, 191)"),
               cymk = c("(83, 39, 0, 57)", "(0, 0, 0, 25)"))
)

#' Analysis Function colour palette function
#'
#' Returns selected colour palette as a vector of the selected code type (hex/rgb/cymk).
#'
#' @param type Name of desired palette. Choices are:
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

  chart_type <- af_palettes[[type]]

  if (type == "categorical" && missing(n))
    stop("Number of colours is required for categorical palette")

  if (missing(n)) {
    n <- length(chart_type[[1]])
  }

  if (n > length(chart_type[[1]])) {
    stop("Number of requested colours greater than available colours")
  }

  if (n > 2) {
    message("Line charts using more than two colours may not be accessible to all users")
  }

  print(chart_type[[code]][1:n])
}

