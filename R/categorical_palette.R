#' List of colour codes in the 'categorical' colour palette
#'
#' @param code type of colour code required. Choices are:
#'   \code{hex}, \code{rgb}
#'
#' @returns vector of the required type of colour code  from the categorical palette
#'
#' @examples afcolours:::categorical_colours(code = "hex")

categorical_colours <- function(code = c("hex", "rgb")) {

  code <- match.arg(code)

  colours <- lst(

    hex = c("#12436D", "#28A197", "#801650", "#F46A25", "#3D3D3D", "#A285D1"),

    rgb = t(grDevices::col2rgb(hex))

    )


  colours[[code]]

}








