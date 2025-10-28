test_that("extracting codons work", {
  expect_equal(find_codons("ATCGTTACCGTCCGT"),
               c("ATC", "GTT", "ACC", "GTC", "CGT"))
  expect_equal(find_codons("ATCGTTACCGTCCG"),
               c("ATC", "GTT", "ACC", "GTC"))
})
