test_that("mode of one data point is the data point itself", {
  expect_equal(mode_finder(c(1)), 1)
})

test_that("mode that is just one observation", {
  expect_equal(mode_finder(c(1,2,2,2,3,4,5,6,7,8,9)), 2)
})

test_that("mode that inclided two observations oobservation", {
  expect_equal(mode_finder(c(1,2,2,2,3,4,5,6,7,8,9,10,10,10)), c(2,10)
)})
