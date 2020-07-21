#' Get File IDs
#'
#' Get the file IDs in the 100 LC dataset and return them as an integer vector.
#' @keywords file ids
#' @export
#' @examples
#' get_file_ids()

get_file_ids <- function() {
  file_ids <- clc %>% select(file_id) %>% distinct() %>% arrange(file_id)
  file_ids <- as.vector(file_ids$file_id)
  return(file_ids)
}
