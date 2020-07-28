#' Get Corpus IDs
#'
#' Get the corpus IDs
#' @keywords file ids
#' @export
#' @examples
#' get_corpus_ids()

get_corpus_ids <- function() {
  corpus_ids <- clc_corpus %>% select(id) %>% distinct() %>% arrange(id)
  corpus_ids <- as.vector(corpus_ids$id)
  return(corpus_ids)
}
