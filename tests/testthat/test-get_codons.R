test_that("test that get_codons works from start=1", {
  expect_equal(get_codons("ATTCCG"),c("ATT","CCG"))
})

test_that("test that get_codons works from start=2", {
  expect_equal(get_codons("ATTCCG",start=2),c("TTC"))
})

test_that("test that get_codons works from start=3", {
  expect_equal(get_codons("ATTCCG",start=3),c("TCC"))
})
