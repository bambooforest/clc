#' Get Word Frequency Counts
#'
#' This function allows you to get word frequency counts from a text file.
#' @param file_id Pass in a file_id. Default is 10.
#' @param add_index Should there be a column index? Default is TRUE.
#' @keywords words
#' @export
#' @examples
#' get_word_counts()

get_word_counts <- function(id=10, add_index=TRUE) {
  text_lines <- clc %>% dplyr::filter(file_id == id) %>% dplyr::select(line_id, text)
  words <- text_lines %>% tidytext::unnest_tokens(word, text)
  counts <- words %>% count(word, sort = TRUE)
  if (add_index) {
    counts$rank <- seq.int(nrow(counts))
  }
  return(counts)
}
