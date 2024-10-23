#' Check equality
#' 
#' Check, if two containers hold identical data.
#' 
#' @param e1 A \code{cppcontainers} object.
#' @param e2 A \code{cppcontainers} object.
#' 
#' @returns Returns \code{TRUE}, if the containers hold the same data and \code{FALSE} otherwise.
#' 
#' @examples
#' x <- set(1:10)
#' y <- set(1:10)
#' x == y
#' [1] TRUE
#' 
#' y <- set(1:11)
#' x == y
#' [1] FALSE
#' 
#' @include classes.R

#' @export
methods::setMethod("==", methods::signature(e1 = "CppSet", e2 = "CppSet"), function(e1, e2) {
  return(switch(e1@type,
    integer = set_equal_i(e1@pointer, e2@pointer),
    double = set_equal_d(e1@pointer, e2@pointer),
    string = set_equal_s(e1@pointer, e2@pointer),
    boolean = set_equal_b(e1@pointer, e2@pointer)
  ))
})

#' @export
methods::setMethod("==", methods::signature(e1 = "CppUnorderedSet", e2 = "CppUnorderedSet"), function(e1, e2) {
  return(switch(e1@type,
    integer = unordered_set_equal_i(e1@pointer, e2@pointer),
    double = unordered_set_equal_d(e1@pointer, e2@pointer),
    string = unordered_set_equal_s(e1@pointer, e2@pointer),
    boolean = unordered_set_equal_b(e1@pointer, e2@pointer)
  ))
})
