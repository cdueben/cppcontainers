#' Get container size
#' 
#' Get the number of elements in a container.
#' 
#' @param x A \code{cppcontainers} object.
#' 
#' @returns Returns a numeric.
#' 
#' @examples
#' s <- set(1:10)
#' s
#' 1 2 3 4 5 6 7 8 9 10
#' 
#' size(s)
#' [1] 10
#' 

#' @export
methods::setGeneric("size", function(x) standardGeneric("size"))

#' @include classes.R

#' @export
methods::setMethod("size", methods::signature(x = "CppSet"), function(x) {
  return(switch(x@type,
    integer = set_size_i(x@pointer),
    double = set_size_d(x@pointer),
    string = set_size_s(x@pointer),
    boolean = set_size_b(x@pointer)
  ))
})

#' @export
methods::setMethod("size", methods::signature(x = "CppUnorderedSet"), function(x) {
  return(switch(x@type,
    integer = unordered_set_size_i(x@pointer),
    double = unordered_set_size_d(x@pointer),
    string = unordered_set_size_s(x@pointer),
    boolean = unordered_set_size_b(x@pointer)
  ))
})
