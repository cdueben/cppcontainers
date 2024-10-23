#' Merge two objects
#' 
#' Merge two objects by reference.
#' 
#' @param x A \code{cppcontainers} object.
#' @param y A \code{cppcontainers} object.
#' @param ... Has no effect. Only included for compatibility with the generic base R function.
#' 
#' @details \code{x} and \code{y} must be of the same type. E.g. both integer or both string. The function merges elements from \code{y} that are not in 
#' \code{x} into \code{x} and deletes them from \code{y}. This is done by reference.
#' 
#' @returns Invisibly returns \code{NULL}.
#' 
#' @examples
#' x <- set(c("Hello", "there"))
#' y <- set(c("Hello", "world"))
#' 
#' merge(x, y)
#' x
#' "Hello" "there" "world"
#' y
#' "Hello"
#' 
#' @include classes.R

#' @export
methods::setMethod("merge", methods::signature(x = "CppSet", y = "CppSet"), function(x, y) {
  if(x@type == y@type) {
    return(switch(x@type,
      integer = set_merge_i(x@pointer, y@pointer),
      double = set_merge_d(x@pointer, y@pointer),
      string = set_merge_s(x@pointer, y@pointer),
      boolean = set_merge_b(x@pointer, y@pointer)
    ))
  } else {
    stop("x and y are not of the same data type. x is of type ", x@type, " and y is of type ", y@type, ".")
  }
})

#' @export
methods::setMethod("merge", methods::signature(x = "CppUnorderedSet", y = "CppUnorderedSet"), function(x, y) {
  if(x@type == y@type) {
    return(switch(x@type,
      integer = unordered_set_merge_i(x@pointer, y@pointer),
      double = unordered_set_merge_d(x@pointer, y@pointer),
      string = unordered_set_merge_s(x@pointer, y@pointer),
      boolean = unordered_set_merge_b(x@pointer, y@pointer)
    ))
  } else {
    stop("x and y are not of the same data type. x is of type ", x@type, " and y is of type ", y@type, ".")
  }
})
