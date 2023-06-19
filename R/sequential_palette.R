#' List of colour codes in the 'sequential' colour palette
#'
#' @param code type of colour code required. Choices are:
#'   \code{hex}, \code{rgb}, \code{cymk}, \names{names}
#'
#' @return vector of the required type of colour code  from the sequential palette
#'
#' @example sequential_colours(code = "hex")

sequential_colours <- function(code = c("hex", "rgb", "cymk", "names")) {

  code <- match.arg(code)

  colours <- list(

    names = c("dark_blue", "mid_blue", "light_blue"),

    hex = c("#12436D", "#2073BC", "#6BACE6"),

    rgb = c("(18, 67, 109)", "(32, 115, 188)", "(107, 172, 230)"),

    cymk = c("(83, 39, 0, 57)", "(83, 39, 0, 26)", "(53, 25, 0, 10)")

    )

  colours[[code]]

}
