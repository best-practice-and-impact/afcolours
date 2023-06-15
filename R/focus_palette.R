focus_colours <- function(code = c("hex", "rgb", "cymk", "names")) {

  code <- match.arg(code)

  focus <- list(

    names = c("dark_blue", "grey"),

    hex = c("#12436D", "#BFBFBF"),

    rgb = c("(18, 67, 109)", "(191, 191, 191)"),

    cymk = c("(83, 39, 0, 57)", "(0, 0, 0, 25)")

    )

colours[[code]]

}

focus_colours("rgb")
