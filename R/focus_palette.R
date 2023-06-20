#' List of colour codes in the 'focus' colour palette
#'
#' @param code type of colour code required. Choices are:
#'   \code{hex}, \code{rgb}, \names{names}
#'
#' @return vector of the required type of colour code  from the focus palette
#'
#' @example focus_colours(code = "hex")

 focus_colours <- function(code = c("hex", "rgb", "names")) {

  code <- match.arg(code)

  colours <- lst(

    names = c("dark_blue", "grey"),

    hex = c("#12436D", "#BFBFBF"),

    rgb = t(col2rgb(hex))

    )


  colours[[code]]

}


