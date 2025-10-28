#' Create DNA sequence
#'
#' @param length Desired length of the DNA sequence
#'
#' @returns A string containing a randomly generated DNA sequence
#' @export
#'
#' @examples create_dna_sequence(10)
create_dna_sequence <- function(length){
  dna_vector <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  dna_sequence_string <- paste0(dna_vector, collapse = "")
  return(dna_sequence_string)
}
