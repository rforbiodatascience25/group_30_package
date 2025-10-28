test_that("dna_to_rna turns DNA into RNA", {
  expect_equal(dna_to_rna("ATTGCT"), "AUUGCU")
})
