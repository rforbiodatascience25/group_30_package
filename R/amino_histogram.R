#' Generate histogram of amino acids
#'
#'@importFrom stringr str_split boundary str_count
#'@import ggplot2
#'
#' @param amino_sequence An amino acid sequence string
#'
#' @returns histogram_ggplot
#' @export

amino_histogram <- function(amino_sequence){
  amino_unique <- amino_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(amino_unique,
                   function(amino_acid) stringr::str_count(string = amino_sequence,
                                                           pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Amino_sequence"]] <- rownames(counts)

  histogram_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_sequence,
                                 y = Counts,
                                 fill = Amino_sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(histogram_plot)
}
