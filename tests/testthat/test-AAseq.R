# tests/testthat/test-AASeq.R

test_that("AASeq translates codons correctly", {
  standard_codon <<- c(
    AUG = "M",  # Methionine
    GCU = "A",  # Alanine
    UUU = "F",  # Phenylalanine
    UAA = "*"   # Stop codon
  )

  codons <- c("AUG", "GCU", "UAA")

  expected <- "MA_"

  # Run function
  result <- AASeq(codons)

  # Test equality
  expect_equal(result, expected)
})

test_that("AASeq handles empty input", {
  standard_codon <<- c(AUG = "M")
  expect_equal(AASeq(character(0)), "")
})

test_that("AASeq returns NA for unknown codons", {
  standard_codon <<- c(AUG = "M")
  result <- AASeq(c("AUG", "XXX"))
  expect_true(is.na(result[1]) || grepl("NA", result))
})
