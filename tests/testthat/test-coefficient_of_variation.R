test_that("central_moments of 1 gives us 0", {
  expect_equal(central_moments(c(9,9,9,9,4,3,2),1), 0)
})


test_that("central_moments of data with the same point gives us 0", {
  expect_equal(central_moments(c(9,9,9,9,9,9,9,9,9),4), 0)
})

test_that("varaince of simple data evenly spaced apart should gives us 1", {
  expect_equal(central_moments(c(0,1,2),2), 1)
})
