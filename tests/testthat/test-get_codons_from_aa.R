test_that("Test that get_aa_from_codon returns amino acids", {
  expect_equal(get_aa_from_codon(c("AUG","AAA")), "MK")
})

test_that("Test that get_aa_from_codon only accepts input with uracil", {
  expect_equal(get_aa_from_codon(c("ATG")), "NA")
})
