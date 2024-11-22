test_that("make sure the 50% percentile is the median", {
  expect_equal(percentiles(c(1:100), percentile = 0.5), median(c(1:100)))
})
test_that("make sure the 0% percentile is the first observation", {
  expect_equal(percentiles(c(1:100), percentile = 0), 1)
})

test_that("make sure the 100% percentile is the last observation", {
  expect_equal(percentiles(c(1:100), percentile = 1), 100)
})
