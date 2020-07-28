#' Get References
#'
#' Get the references in the 100 LC dataset.
#' @keywords bibliography references
#' @export
#' @examples
#' get_references()

get_references <- function() {
  references <- clc_file %>% dplyr::select(language_name_glotto, filename, source) %>% dplyr::arrange(language_name_glotto, filename)
  return(references)
}
