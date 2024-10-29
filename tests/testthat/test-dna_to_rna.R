test_that("Transcription worked", {
  expect_equal(dna_to_rna("TGAGTCTA"), "UGAGUCUA")
  expect_equal(dna_to_rna("TTT"), "UUU")
  expect_equal(dna_to_rna("AGCGA"), "AGCGA")
})
