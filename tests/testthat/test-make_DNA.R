test_that("make_DNA returns string of expected length", {
  expect_equal(nchar(make_DNA(5)), 5)
})

test_that("make_DNA only returns DNA bases", {
  expect_equal(grepl("[^ATCG]",make_DNA(5)), FALSE)
})
