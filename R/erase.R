#' Erase elements
#' 
#' Delete elements from a container by reference.
#' 
#' @param x A \code{cppcontainers} object.
#' @param values A vector of values to delete from \code{x}.
#' 
#' @returns Invisibly returns \code{NULL}.
#' 
#' @examples
#' s <- set(1:10)
#' s
#' 1 2 3 4 5 6 7 8 9 10
#' 
#' erase(s, 4:6)
#' s
#' 1 2 3 7 8 9 10 
#' 

#' @export
methods::setGeneric("erase", function(x, values) standardGeneric("erase"))

#' @include classes.R

#' @export
methods::setMethod("erase", methods::signature(x = "CppSet"), function(x, values) {
  if(is.numeric(values) || is.character(values) || is.logical(values)) {
    return(switch(x@type,
      integer = set_erase_i(x@pointer, values),
      double = set_erase_d(x@pointer, values),
      string = set_erase_s(x@pointer, values),
      boolean = set_erase_b(x@pointer, values)
    ))
  } else {
    stop("values must be an integer, numeric, character, or logical vector")
  }
})

#' @export
methods::setMethod("erase", methods::signature(x = "CppUnorderedSet"), function(x, values) {
  if(is.numeric(values) || is.character(values) || is.logical(values)) {
    return(switch(x@type,
      integer = unordered_set_erase_i(x@pointer, values),
      double = unordered_set_erase_d(x@pointer, values),
      string = unordered_set_erase_s(x@pointer, values),
      boolean = unordered_set_erase_b(x@pointer, values)
    ))
  } else {
    stop("values must be an integer, numeric, character, or logical vector")
  }
})
