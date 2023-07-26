#' List of colour codes in the 'sequential' colour palette
#'
#' @param code type of colour code required. Choices are:
#'   \code{hex}, \code{rgb}
#'
#' @returns vector of the required type of colour code  from the sequential palette
#'
#' @example sequential_colours(code = "hex")

sequential_colours <- function(code = c("hex", "rgb")) {

  code <- match.arg(code)

  colours <- lst(

    hex = c("#12436D", "#2073BC", "#6BACE6"),

    rgb = t(col2rgb(hex))

    )


  colours[[code]]

}


