test_that("DNA sequence length", {
  expect_equal(10, nchar(create_dna_sequence(10)))
})
