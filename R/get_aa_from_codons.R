#' Get amino acids from a list of codons
#'
#' @param codons a vector of codons
#'
#' @return a string of a amino acids
#' @export
#'
#' @examples
get_aa_from_codon <- function(codons){
  aa_str <- paste0(codon_to_aa[codons], collapse = "")
  return(aa_str)
}
