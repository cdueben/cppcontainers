#' Count element frequency
#' 
#' Count how often elements occur in a container.
#' 
#' @param x A \code{cppcontainers} object.
#' @param values A vector of elements to check.
#' 
#' @returns Returns a vector of the same length as \code{values}, denoting for each value how often it occurs.
#' 
#' @examples
#' s <- set(1:10)
#' s
#' 1 2 3 4 5 6 7 8 9 10
#' 
#' count(s, 9:11)
#' [1] 1 1 0
#' 

#' @export
methods::setGeneric("count", function(x, values) standardGeneric("count"))

#' @include classes.R

#' @export
methods::setMethod("count", methods::signature(x = "CppSet"), function(x, values) {
  if(is.numeric(values) || is.character(values) || is.logical(values)) {
    return(switch(x@type,
      integer = set_count_i(x@pointer, values),
      double = set_count_d(x@pointer, values),
      string = set_count_s(x@pointer, values),
      boolean = set_count_b(x@pointer, values)
    ))
  } else {
    stop("values must be an integer, numeric, character, or logical vector")
  }
})

#' @export
methods::setMethod("count", methods::signature(x = "CppUnorderedSet"), function(x, values) {
  if(is.numeric(values) || is.character(values) || is.logical(values)) {
    return(switch(x@type,
      integer = unordered_set_count_i(x@pointer, values),
      double = unordered_set_count_d(x@pointer, values),
      string = unordered_set_count_s(x@pointer, values),
      boolean = unordered_set_count_b(x@pointer, values)
    ))
  } else {
    stop("values must be an integer, numeric, character, or logical vector")
  }
})
