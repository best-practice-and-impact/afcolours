## code to prepare colour palettes goes here

palettes <- lst(
  categorical = c("#12436D", "#28A197", "#801650", "#F46A25", "#3D3D3D", "#A285D1"),
  duo = c("#12436D", "#F46A25"),
  focus = c("#12436D", "#BFBFBF"),
  sequential = c("#12436D", "#2073BC", "#6BACE6")
  )

usethis::use_data(palettes, internal = TRUE, overwrite = TRUE)
