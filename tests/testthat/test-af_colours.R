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

test_that("n gives the correct number of colours", {
  expect_equal(length(af_colours("categorical", n=4)), 4)
  expect_equal(length(af_colours("sequential", n=3)), 3)
  expect_equal(nrow(af_colours("duo", "rgb", n=2)), 2)
  expect_equal(nrow(af_colours("focus", "rgb", n=2)), 2)
})

test_that("categorical type switches to duo if n = 2", {
  expect_equal(af_colours("categorical", n=2), c("#12436D", "#F46A25"))
})
