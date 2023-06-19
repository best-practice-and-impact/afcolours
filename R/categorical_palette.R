#' List of colour codes in the 'categorical' colour palette
#'
#' @param code type of colour code required. Choices are:
#'   \code{hex}, \code{rgb}, \names{names}
#'
#' @return vector of the required type of colour code  from the categorical palette
#'
#' @example categorical_colours(code = "hex")

categorical_colours <- function(code = c("hex", "rgb", "names")) {

  code <- match.arg(code)

  colours <- list(

    names = c("dark_blue", "turquoise", "dark_pink", "orange", "dark_grey", "light_purple"),

    hex = c("#12436D", "#28A197", "#801650", "#F46A25", "#3D3D3D", "#A285D1"),

    rgb = c("(18, 67, 109)", "(40, 161, 151)", "(128, 22, 80)", "(244, 106, 37)", "(61, 61, 61)", "(162, 133, 209)")

    )

  colours[[code]]

}







