test_that("first moment is the mean", {
  expect_equal(moments(c(1:100),1), mean(c(1:100)))
})

test_that("any moment of all 0's is 0", {
  expect_equal(moments(c(0,0,0,0,0,0,0,0,0,0),10), 0)
})

test_that("the second moment below should be 4", {
  expect_equal(moments(c(1,-1,-1,1),2), 1)
})
