#' List of colour codes in the 'focus' colour palette
#'
#' @param code type of colour code required. Choices are:
#'   \code{hex}, \code{rgb}, \code{cymk}, \names{names}
#'
#' @return vector of the required type of colour code  from the focus palette
#'
#' @example focus_colours(code = "hex")

 focus_colours <- function(code = c("hex", "rgb", "cymk", "names")) {

  code <- match.arg(code)

  colours <- list(

    names = c("dark_blue", "grey"),

    hex = c("#12436D", "#BFBFBF"),

    rgb = c("(18, 67, 109)", "(191, 191, 191)"),

    cymk = c("(83, 39, 0, 57)", "(0, 0, 0, 25)")

    )

colours[[code]]

}
