#' @include classes.R

#' @export
unordered_set <- function(x) {
  if(is.integer(x)) {
    s <- new("CppUnorderedSet", pointer = unordered_set_i(x), type = "integer")
  } else if(is.numeric(x)) {
    s <- new("CppUnorderedSet", pointer = unordered_set_d(x), type = "double")
  } else if(is.character(x)) {
    s <- new("CppUnorderedSet", pointer = unordered_set_s(x), type = "string")
  } else if(is.logical(x)) {
    s <- new("CppUnorderedSet", pointer = unordered_set_b(x), type = "boolean")
  } else {
    stop("x must an integer, numeric, character, or logical vector")
  }
  return(s)
}
