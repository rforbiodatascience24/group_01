#' Transcribe DNA to RNA
#'
#' @param dna dna sequence which gets transcribed to rna
#'
#' @return transcribed rna
#' @export
#'
#' @examples dna_to_rna("GTGA")
dna_to_rna <- function(dna){
  rna <- gsub("T", "U", dna)
  return(rna)
}
