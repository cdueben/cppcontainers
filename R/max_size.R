#' Get maximum container size
#' 
#' Get the maximum number of elements the container can hold.
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
#' max_size(s)
#' [1] 4.611686e+17
#' 

#' @export
methods::setGeneric("max_size", function(x) standardGeneric("max_size"))

#' @include classes.R

#' @export
methods::setMethod("max_size", methods::signature(x = "CppSet"), function(x) {
  return(switch(x@type,
    integer = set_max_size_i(x@pointer),
    double = set_max_size_d(x@pointer),
    string = set_max_size_s(x@pointer),
    boolean = set_max_size_b(x@pointer)
  ))
})

#' @export
methods::setMethod("max_size", methods::signature(x = "CppUnorderedSet"), function(x) {
  return(switch(x@type,
    integer = unordered_set_max_size_i(x@pointer),
    double = unordered_set_max_size_d(x@pointer),
    string = unordered_set_max_size_s(x@pointer),
    boolean = unordered_set_max_size_b(x@pointer)
  ))
})
