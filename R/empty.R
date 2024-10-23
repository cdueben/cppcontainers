#' Check emptiness
#' 
#' Check, if a container is empty, i.e. does not contain elements.
#' 
#' @param x A \code{cppcontainers} object.
#' 
#' @returns Returns \code{TRUE}, if the container is empty, and \code{FALSE} otherwise.
#' 
#' @examples
#' s <- set(1:10)
#' s
#' 1 2 3 4 5 6 7 8 9 10
#' 
#' clear(s)
#' empty(s)
#' [1] TRUE
#' 

#' @export
methods::setGeneric("empty", function(x) standardGeneric("empty"))

#' @include classes.R

#' @export
methods::setMethod("empty", methods::signature(x = "CppSet"), function(x) {
  return(switch(x@type,
    integer = set_empty_i(x@pointer),
    double = set_empty_d(x@pointer),
    string = set_empty_s(x@pointer),
    boolean = set_empty_b(x@pointer)
  ))
})

#' @export
methods::setMethod("empty", methods::signature(x = "CppUnorderedSet"), function(x) {
  return(switch(x@type,
    integer = unordered_set_empty_i(x@pointer),
    double = unordered_set_empty_d(x@pointer),
    string = unordered_set_empty_s(x@pointer),
    boolean = unordered_set_empty_b(x@pointer)
  ))
})
