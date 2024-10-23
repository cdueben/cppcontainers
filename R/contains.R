#' Check for an element
#' 
#' Check, if an element exists in the container.
#' 
#' @param x A \code{cppcontainers} object.
#' 
#' @returns Returns a vector of the same length as \code{values}, denoting for each value whether it is part of \code{x} (\code{TRUE}) or not 
#' (\code{FALSE}).
#' 
#' @examples
#' s <- set(1:10)
#' s
#' 1 2 3 4 5 6 7 8 9 10
#' 
#' contains(s, 9:11)
#' [1]  TRUE  TRUE FALSE
#' 

#' @export
methods::setGeneric("contains", function(x, values) standardGeneric("contains"))

#' @include classes.R

#' @export
methods::setMethod("contains", methods::signature(x = "CppSet"), function(x, values) {
  if(is.numeric(values) || is.character(values) || is.logical(values)) {
    return(switch(x@type,
      integer = set_contains_i(x@pointer, values),
      double = set_contains_d(x@pointer, values),
      string = set_contains_s(x@pointer, values),
      boolean = set_contains_b(x@pointer, values)
    ))
  } else {
    stop("values must be an integer, numeric, character, or logical vector")
  }
})

#' @export
methods::setMethod("contains", methods::signature(x = "CppUnorderedSet"), function(x, values) {
  if(is.numeric(values) || is.character(values) || is.logical(values)) {
    return(switch(x@type,
      integer = unordered_set_contains_i(x@pointer, values),
      double = unordered_set_contains_d(x@pointer, values),
      string = unordered_set_contains_s(x@pointer, values),
      boolean = unordered_set_contains_b(x@pointer, values)
    ))
  } else {
    stop("values must be an integer, numeric, character, or logical vector")
  }
})

