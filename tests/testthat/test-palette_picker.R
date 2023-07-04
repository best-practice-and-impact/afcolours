test_that("palette_picker function works with palette types", {
  expect_equal(palette_picker("categorical"), c("#12436D", "#28A197", "#801650", "#F46A25", "#3D3D3D", "#A285D1"))
  expect_equal(palette_picker("duo"), c("#12436D", "#F46A25"))
  expect_equal(palette_picker("sequential"), c("#12436D", "#2073BC", "#6BACE6"))
  expect_equal(palette_picker("focus"), c("#12436D", "#BFBFBF"))
})

test_that("palette_picker function is returning the correct colour format", {
  expect_equal(c(palette_picker("duo", colour_format = "rgb")), c(18, 244, 67, 106, 109, 37))
  expect_equal(palette_picker("focus"), c("#12436D", "#BFBFBF"))
})
