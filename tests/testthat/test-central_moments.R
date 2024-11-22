test_that("that the second moment is the variance", {
  expect_equal(central_moments(c(1:100),2), var(c(1:100)))
})

test_that("that the first moment is 0", {
  expect_equal(central_moments(c(1:100),1), 0)
})

test_that("that the third moment is the unstandardzied skewness (must multiply skewness by sd(data)**3 to unstandardize it)", {
  expect_equal(central_moments(c(1:100),3), moments::skewness(c(1:100))*(sd(c(1:100))**3) )
})


