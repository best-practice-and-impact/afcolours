#' Palette selection and return
#'
#' Used in the af_colours function. Returns a vector of the required colour codes from the palette selected in the input "type"
#'
#' @param type type of palette required (categorical, duo, sequential, focus)
#' @param colour_format type of colour format required (hex, rgb, names), default is hex
#'
#' @return vector of the required type of colour code  from the required palette
#'
#' @example palette_picker(type = "categorical", code = "rgb")


palette_picker <- function(type, colour_format = "hex") {

  palette_list <- list(

    `categorical` = categorical_colours(colour_format),

    `duo` = duo_colours(colour_format),

    `sequential` = sequential_colours(colour_format),

    `focus` = focus_colours(colour_format)

  )

  palette_list[[type]]

}


