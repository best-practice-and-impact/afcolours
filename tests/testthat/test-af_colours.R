test_that("af_colour function works with palette types", {
  expect_equal(af_colours("categorical", 5), c("#12436D", "#28A197", "#801650", "#F46A25", "#3D3D3D"))
  expect_equal(af_colours("duo"), c("#12436D", "#F46A25"))
  expect_equal(af_colours("sequential"), c("#12436D", "#2073BC", "#6BACE6"))
  expect_equal(af_colours("focus"), c("#12436D", "#BFBFBF"))
})

test_that("user must specify number of colours for categorical palette", {
  expect_error(af_colours("categorical"), "Number of colours (n) is required for categorical palette", fixed = TRUE)
})

test_that("n gives the correct number of colours", {
  expect_equal(af_colours("categorical", 4), c("#12436D", "#28A197", "#801650", "#F46A25"))
  expect_error(af_colours("sequential", 4), "Not enough colours in this palette", fixed = TRUE)
})

test_that("function is returning the correct code type", {
  expect_equal(af_colours("duo", code = "rgb"), c("(18, 67, 109)", "(244, 106, 37)"))
  expect_equal(af_colours("focus", code = "names"), c("dark_blue", "grey"))
})

test_that("categorical type switches to duo if n = 2", {
  expect_equal(af_colours("categorical", 2), c("#12436D", "#F46A25"))
})



