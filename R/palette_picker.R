#' Palette selection and return
#'
#' Used in the af_colours function. Returns a vector of the required colour codes from the palette selected in the input "type"
#'
#' @param type type of palette required (categorical, duo, sequential, focus)
#' @param code type of colour code required (hex, rgb, cymk, names), default is hex
#'
#' @return vector of the required type of colour code  from the required palette
#'
#' @example palette_picker(type = "categorical", code = "rgb")


palette_picker <- function(type, code = "hex") {

    palette_list <- list(

      `categorical` = categorical_colours(code),

      `duo` = duo_colours(code),

      `sequential` = sequential_colours(),

      `focus` = focus_colours()

    )


    palette_list[[type]]


}


