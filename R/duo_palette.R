#' List of colour codes in the 'duo' colour palette
#'
#' @param code type of colour code required. Choices are:
#'   \code{hex}, \code{rgb}, \names{names}
#'
#' @return vector of the required type of colour code  from the duo palette
#'
#' @example duo_colours(code = "hex")

duo_colours <- function(code = c("hex", "rgb", "names")) {

  code <- match.arg(code)

  colours <- list(
    names = c("dark_blue", "orange"),

    hex = c("#12436D", "#F46A25"),

    rgb = c("(18, 67, 109)", "(244, 106, 37)")

  )

  colours[[code]]

}


