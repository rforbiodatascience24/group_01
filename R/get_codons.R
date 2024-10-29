#' Find the codons in a given DNA string
#'
#' @param dna_str a string of nucleotides
#' @param start the position of the read frame, default=1
#'
#' @return vector of codons
#' @export
get_codons <- function(dna_str, start = 1){
  dna_len <- nchar(dna_str)
  codons <- substring(dna_str,
                      first = seq(from = start, to = dna_len-3+1, by = 3),
                      last = seq(from = 3+start-1, to = dna_len, by = 3))
  return(codons)
}
