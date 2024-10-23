#' Add an element
#' 
#' Add an element to a container by reference.
#' 
#' @param x A \code{cppcontainers} object.
#' @param value A value to add to \code{x}.
#' 
#' @returns Invisibly returns \code{NULL}.
#' 
#' @examples
#' s <- set(1:10)
#' s
#' 1 2 3 4 5 6 7 8 9 10
#' 
#' emplace(s, 11)
#' s
#' 1 2 3 4 5 6 7 8 9 10 11
#' 

#' @export
methods::setGeneric("emplace", function(x, value) standardGeneric("emplace"))

#' @include classes.R

#' @export
methods::setMethod("emplace", methods::signature(x = "CppSet"), function(x, value) {
  if(is.numeric(value) || is.character(value) || is.logical(value)) {
    if(length(value) == 1L) {
      return(switch(x@type,
        integer = set_emplace_i(x@pointer, value),
        double = set_emplace_d(x@pointer, value),
        string = set_emplace_s(x@pointer, value),
        boolean = set_emplace_b(x@pointer, value)
      ))
    } else {
      stop("emplace currently only accepts a single value. Use insert to add multiple values at once.")
    }
  } else {
    stop("value must be an integer, numeric, character, or logical value")
  }
})

#' @export
methods::setMethod("emplace", methods::signature(x = "CppUnorderedSet"), function(x, value) {
  if(is.numeric(value) || is.character(value) || is.logical(value)) {
    if(length(value) == 1L) {
      return(switch(x@type,
        integer = unordered_set_emplace_i(x@pointer, value),
        double = unordered_set_emplace_d(x@pointer, value),
        string = unordered_set_emplace_s(x@pointer, value),
        boolean = unordered_set_emplace_b(x@pointer, value)
      ))
    } else {
      stop("emplace currently only accepts a single value. Use insert to add multiple values at once.")
    }
  } else {
    stop("value must be an integer, numeric, character, or logical value")
  }
})
