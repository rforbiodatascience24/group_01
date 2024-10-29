#' Plotting the sequence composition
#'
#' @param Sequence Input of the function is the sequence you would like to analyze
#'
#' @return It will output a plot with the character counts
#' @export
#'
#' @examples plot_seq_composition("AGTGTAA")
plot_seq_composition <- function(sequence){
  chars <- sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(chars, function(amino_acid) stringr::str_count(string = sequence, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Sequence"]] <- rownames(counts)

  composition_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Sequence, y = Counts, fill = Sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(composition_plot)
}
