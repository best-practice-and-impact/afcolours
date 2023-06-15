duo_colours <- function(code = c("hex", "rgb", "cymk", "names")) {

  code <- match.arg(code)

  colours <- list(
    colours = c("dark_blue", "orange"),

    hex = c("#12436D", "#F46A25"),

    rgb = c("(18, 67, 109)", "(244, 106, 37)"),

    cymk = c("(83, 39, 0, 57)", "(83, 39, 0, 57)")

  )

  colours[[code]]

}
