#' Find codons
#'
#' @param coding_sequence A DNA or RNA sequence as a string.
#' @param start Start position of the sequence.
#'
#' @returns A list of 3 character strings, where each string is a codon.
#' @export
#'
#' @examples
#' dna_sequence <- "ATCGTTACCGTCCGT"
#' find_codons(dna_sequence)
find_codons <- function(coding_sequence, start = 1){
  n <- nchar(coding_sequence)
  codons <- substring(coding_sequence,
                      first = seq(from = start, to = n-3+1, by = 3),
                      last = seq(from = 3+start-1, to = n, by = 3))
  return(codons)
}
