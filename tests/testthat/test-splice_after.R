skip_on_os("mac")
# forward_list
testthat::test_that("forward_list splice_after integer", {
  x <- cpp_forward_list(4:6)
  y <- cpp_forward_list(9:12)
  testthat::expect_invisible(splice_after(x, y, 2, 2, 3))
  testthat::expect_equal(to_r(x), c(4:5, 11L, 6L))
  testthat::expect_equal(to_r(y), c(9:10, 12L))
})
testthat::test_that("forward_list splice_after double", {
  x <- cpp_forward_list(c(1, 2, 3.5))
  y <- cpp_forward_list(c(0.5, 6, 7.2))
  testthat::expect_invisible(splice_after(x, y, 2, 2, 3))
  testthat::expect_equal(to_r(x), c(1, 2, 7.2, 3.5))
  testthat::expect_equal(to_r(y), c(0.5, 6))
})
testthat::test_that("forward_list splice_after string", {
  x <- cpp_forward_list(c("hello", "there", "world"))
  y <- cpp_forward_list(c("a", "quick", "test"))
  testthat::expect_invisible(splice_after(x, y, 2, 2, 3))
  testthat::expect_equal(to_r(x), c("hello", "there", "test", "world"))
  testthat::expect_equal(to_r(y), c("a", "quick"))
})
testthat::test_that("forward_list splice_after boolean", {
  x <- cpp_forward_list(c(TRUE, FALSE, FALSE))
  y <- cpp_forward_list(c(TRUE, FALSE, FALSE))
  testthat::expect_invisible(splice_after(x, y, 2, 2, 3))
  testthat::expect_equal(to_r(x), c(TRUE, FALSE, FALSE, FALSE))
  testthat::expect_equal(to_r(y), c(TRUE, FALSE))
})
