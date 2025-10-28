test_that("extracting codons work", {
  expect_equal("ATCGTTACCGTCCGT", c("ATC", "GTT", "ACC", "GTC", "CGT"))
  expect_equal("ATCGTTACCGTCCG", c("ATC", "GTT", "ACC", "GTC"))
})
