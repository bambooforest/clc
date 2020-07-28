#' Get File Names
#'
#' Get the filenames in the 100 LC dataset and return them as a vector.
#' @keywords filenames
#' @export
#' @examples
#' get_file_names()

get_file_names <- function() {
  file_names <- clc_file %>% select(filename) %>% distinct() %>% arrange(filename)
  file_names <- as.vector(file_names$filename)
  return(file_names)
}
