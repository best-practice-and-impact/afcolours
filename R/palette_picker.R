palette_picker <- function(palette, code = "hex") {

    palette_list <- list(


      `categorical` = categorical_colours(code),

      `duo` = duo_colours(code),

      `sequential` = sequential_colours(),

      `focus` = focus_colours()

    )


    palette_list[[palette]]


}


palette_picker("focus")
