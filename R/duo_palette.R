#' List of colour codes in the 'duo' colour palette
#'
#' @param code type of colour code required. Choices are:
#'   \code{hex}, \code{rgb}
#'
#' @returns vector of the required type of colour code  from the duo palette
#'
#' @example duo_colours(code = "hex")

duo_colours <- function(code = c("hex", "rgb")) {

  code <- match.arg(code)

  colours <- lst(

    hex = c("#12436D", "#F46A25"),

    rgb = t(col2rgb(hex))

    )


  colours[[code]]

}



