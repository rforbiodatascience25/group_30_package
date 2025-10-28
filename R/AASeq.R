#' Finding amino acid sequence from codons
#'
#' @param codons: An object expected too be a vector
#'
#' @returns amine acid sequence: a string containing the corresponding amino acid sequence
#' @export
#'
#' @examples AASeq2() -> FSYCFSYCLS__LS_WLPHRLPHRLPQRLPQRITNSITNSITKRMTKRVADGVADGVAEGVAEG
AASeq <- function(codons){
  AASeq2 <- paste0(standard_codon[codons], collapse = "")
  return(AASeq2)
}
