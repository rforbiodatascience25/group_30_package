#' Turning a DNA sequence into RNA
#'
#' @param dna_Sequence: A string containing a polynucleotide sequence of DNA.
#'
#' @returns dna_sequence: A string containing a polynucleotide sequence of RNA.
#' @export
#'
#' @examples dna_sequence <- "ATCGTT"
#' dna_to_rna(dna_sequence)
dna_to_rna <- function(dna_sequence){
  rna_sequence <- gsub("T", "U", dna_sequence)
  return(rna_sequence)
}
