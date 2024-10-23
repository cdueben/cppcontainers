#' Create set
#' 
#' Create a set. Sets are containers of unique, sorted elements.
#' 
#' @param x An integer, numeric, character, or logical vector.
#' 
#' @details Sets are associative containers. They do not provide random access through an index. I.e. \code{s[2]} does not return the second element.
#' 
#' C++ set methods implemented in this package are \link{empty}, \link{size}, \link{max_size}, \link{clear}, \link{insert}, \link{emplace}, \link{erase}, 
#' \link{merge}, \link{count}, and \link{contains}. The package also adds the \code{==} operator and various helper functions (\link{print}, \link{to_r}, 
#' \link{type}).
#' 
#' @returns Returns a CppSet object referencing a set in C++.
#' 
#' @examples
#' s <- set(6:10)
#' s
#' 6 7 8 9 10
#' 
#' insert(s, 4:7)
#' s
#' 4 5 6 7 8 9 10
#' 
#' print(s, from = 6)
#' 6 7 8 9 10
#' 
#' s <- set(c("world", "hello", "there"))
#' s
#' "hello" "there" "world"
#' 
#' erase(s, "there")
#' s
#' "hello" "world"
#' 
#' @include classes.R

#' @export
set <- function(x) {
  if(is.integer(x)) {
    s <- new("CppSet", pointer = set_i(x), type = "integer")
  } else if(is.numeric(x)) {
    s <- new("CppSet", pointer = set_d(x), type = "double")
  } else if(is.character(x)) {
    s <- new("CppSet", pointer = set_s(x), type = "string")
  } else if(is.logical(x)) {
    s <- new("CppSet", pointer = set_b(x), type = "boolean")
  } else {
    stop("x must an integer, numeric, character, or logical vector")
  }
  return(s)
}
