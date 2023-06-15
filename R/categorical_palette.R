categorical_colours <- function(code = c("hex", "rgb", "cymk", "names")) {

  code <- match.arg(code)

  colours <- list(

    names = c("dark_blue", "turquoise", "dark_pink", "orange", "dark_grey", "light_purple"),

    hex = c("#12436D", "#28A197", "#801650", "#F46A25", "#3D3D3D", "#A285D1"),

    rgb = c("(18, 67, 109)", "(40, 161, 151)", "(128, 22, 80)", "(244, 106, 37)", "(61, 61, 61)", "(162, 133, 209)"),

    cymk = c("(83, 39, 0, 57)", "(75, 0, 6, 37)", "(0, 83, 38, 50)", "(0, 57, 85, 4)", "(0, 0, 0, 76)", "(22, 36, 0, 18)")

    )

  colours[[code]]

}







