#' Add elements
#' 
#' Add elements to a container by reference.
#' 
#' @param x A \code{cppcontainers} object.
#' @param values Values to add to \code{x}.
#' 
#' @returns Invisibly returns \code{NULL}.
#' 
#' @examples
#' s <- set(1:10)
#' s
#' 1 2 3 4 5 6 7 8 9 10
#' 
#' insert(s, 11:13)
#' s
#' 1 2 3 4 5 6 7 8 9 10 11 12 13
#' 

#' @export
methods::setGeneric("insert", function(x, values) standardGeneric("insert"))

#' @include classes.R

#' @export
methods::setMethod("insert", methods::signature(x = "CppSet"), function(x, values) {
  if(is.numeric(values) || is.character(values) || is.logical(values)) {
    return(switch(x@type,
      integer = set_insert_i(x@pointer, values),
      double = set_insert_d(x@pointer, values),
      string = set_insert_s(x@pointer, values),
      boolean = set_insert_b(x@pointer, values)
    ))
  } else {
    stop("values must be an integer, numeric, character, or logical vector")
  }
})

#' @export
methods::setMethod("insert", methods::signature(x = "CppUnorderedSet"), function(x, values) {
  if(is.numeric(values) || is.character(values) || is.logical(values)) {
    return(switch(x@type,
      integer = unordered_set_insert_i(x@pointer, values),
      double = unordered_set_insert_d(x@pointer, values),
      string = unordered_set_insert_s(x@pointer, values),
      boolean = unordered_set_insert_b(x@pointer, values)
    ))
  } else {
    stop("values must be an integer, numeric, character, or logical vector")
  }
})
