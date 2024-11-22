test_that("Same data set gives us an iqr of 0", {
  expect_equal(iqr(c(1,1,1,1,1,1,1,1)), 0)
})

test_that("iqr of 5 points should give us the difference of the 2nd and 4th points", {
  expect_equal(iqr(c(1,2,3,4,5)), 2)
})

test_that("Data of two observation points should give us the difference of the two observations divided by 2", {
  expect_equal(iqr(c(10,20)), 5)})
