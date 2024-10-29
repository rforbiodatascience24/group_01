#' Generate a random string of nucleotides
#'
#' @param nuc_len number of nucleotides to output
#'
#' @return a string of nucleotides of length nuc_len
#' @export
make_DNA <- function(nuc_len){
  DNA_vec <- sample(c("A", "T", "G", "C"), size = nuc_len, replace = TRUE)
  DNA_str <- paste0(DNA_vec, collapse = "")
  return(DNA_str)
}
