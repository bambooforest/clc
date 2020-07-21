#' Get Word Frequency Counts
#'
#' This function allows you to get word frequency counts from a text file.
#' @param file_id Pass in the file_id. Default is 1.
#' @keywords words
#' @export
#' @examples
#' get_word_counts()

get_word_counts <- function(id=1, to_file=FALSE) {
  text_lines <- clc %>% filter(file_id == id) %>% select(line_id, text)
  words <- text_lines %>% tidytext::unnest_tokens(word, text)
  counts <- words %>% count(word, sort = TRUE)
  if (to_file) {
    readr::write_csv(counts, file=paste0(id, '_freq.csv'))
  }
  return(counts)
}
