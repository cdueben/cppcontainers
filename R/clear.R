#' Clear the container
#' 
#' Remove all elements from the container by reference.
#' 
#' @param x A \code{cppcontainers} object.
#' 
#' @returns Invisibly returns \code{NULL}.
#' 
#' @examples
#' s <- set(1:10)
#' s
#' 1 2 3 4 5 6 7 8 9 10 
#' 
#' clear(s)
#' s
#' 

#' @export
methods::setGeneric("clear", function(x) standardGeneric("clear"))

#' @include classes.R

#' @export
methods::setMethod("clear", methods::signature(x = "CppSet"), function(x) {
  return(switch(x@type,
    integer = set_clear_i(x@pointer),
    double = set_clear_d(x@pointer),
    string = set_clear_s(x@pointer),
    boolean = set_clear_b(x@pointer)
  ))
})

#' @export
methods::setMethod("clear", methods::signature(x = "CppUnorderedSet"), function(x) {
  return(switch(x@type,
    integer = unordered_set_clear_i(x@pointer),
    double = unordered_set_clear_d(x@pointer),
    string = unordered_set_clear_s(x@pointer),
    boolean = unordered_set_clear_b(x@pointer)
  ))
})

