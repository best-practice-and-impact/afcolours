#' List of colour codes in the 'focus' colour palette
#'
#' @param code type of colour code required. Choices are:
#'   \code{hex}, \code{rgb}
#'
#' @return vector of the required type of colour code  from the focus palette
#'
#' @examples afcolours:::focus_colours(code = "hex")

 focus_colours <- function(code = c("hex", "rgb")) {

  code <- match.arg(code)

  colours <- lst(

    hex = c("#12436D", "#BFBFBF"),

    rgb = t(grDevices::col2rgb(hex))

    )


  colours[[code]]

}


