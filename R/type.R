#' Print data type
#' 
#' Print the data type of a container.
#' 
#' @param x An object of any class defined by this package.
#' 
#' @details The available types are integer, double, string, and boolean.
#' 
#' @returns A character value.
#' 

#' @export
methods::setGeneric("type", function(x) standardGeneric("type"))

#' @include classes.R

#' @export
methods::setMethod("type", methods::signature(x = "CppSet"), function(x) {
  return(x@type)
})

#' @export
methods::setMethod("type", methods::signature(x = "CppUnorderedSet"), function(x) {
  return(x@type)
})
