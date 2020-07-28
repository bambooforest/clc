#' Get File IDs
#'
#' Get the file IDs in the 100 LC dataset and return them as an integer vector.
#' @keywords file ids
#' @export
#' @examples
#' get_file_ids()

get_file_ids <- function() {
  file_ids <- clc_file %>% select(id) %>% distinct() %>% arrange(id)
  file_ids <- as.vector(file_ids$id)
  return(file_ids)
}
