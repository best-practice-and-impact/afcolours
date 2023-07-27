test_that("user must choose an available palette option", {
  expect_error(af_colours("test"), "test is not an available palette option. Please select either 'categorical', 'duo', 'sequential', or 'focus'.", fixed = TRUE)
})

test_that("user must choose an available colour format option", {
  expect_error(af_colours("categorical", colour_format="test"), "test is not an available colour format option. Please select either 'hex' or 'rgb'.", fixed = TRUE)
})

test_that("user must choose at maximum 6 colours for the categorical palette", {
  expect_error(af_colours("categorical", n=7), "The number of colours (n) must not be more than 6 for the categorical palette.", fixed = TRUE)
})

test_that("user must choose at minimum 1 colour for the categorical palette", {
  expect_error(af_colours("categorical", n=0), "The number of colours (n) must be more than 0 for the categorical palette.", fixed = TRUE)
})

test_that("works with palette types", {
  expect_equal(af_colours("categorical"), c("#12436D", "#28A197", "#801650", "#F46A25", "#3D3D3D", "#A285D1"))
  expect_equal(af_colours("duo"), c("#12436D", "#F46A25"))
  expect_equal(af_colours("sequential"), c("#12436D", "#2073BC", "#6BACE6"))
  expect_equal(af_colours("focus"), c("#12436D", "#BFBFBF"))
})

test_that("returns the correct colour format", {
  expect_equal(c(af_colours("duo", colour_format = "rgb")), c(18, 244, 67, 106, 109, 37))
  expect_equal(af_colours("focus"), c("#12436D", "#BFBFBF"))
})


test_that("n returns the correct number of colours", {
  expect_equal(length(af_colours("categorical", n=4)), 4)
  expect_equal(length(af_colours("sequential", n=3)), 3)
  expect_equal(nrow(af_colours("duo", "rgb", n=2)), 2)
  expect_equal(nrow(af_colours("focus", "rgb", n=2)), 2)
})

test_that("categorical type switches to duo if n = 2", {
  expect_equal(af_colours("categorical", n=2), c("#12436D", "#F46A25"))
})
