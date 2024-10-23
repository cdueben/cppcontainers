#' Reserve bucket space and rehash
#' 
#' Set the number of buckets to be able to hold at least \code{n} elements and rehash.
#' 
#' @param x A \code{cppcontainers} object
#' @param n The minimum number of elements per bucket.
#' 
#' @returns Invisibly returns \code{NULL}.
#' 
#' @examples
#' s <- unordered_set(1:10)
#' reserve(s, 3)
#' 

#' @export
methods::setGeneric("reserve", function(x, n) standardGeneric("reserve"))

#' @include classes.R

#' @export
methods::setMethod("reserve", methods::signature(x = "CppUnorderedSet"), function(x, n) {
  if(length(n) != 1L || !is.numeric(n) || !is.finite(n) || n <= 0L) {
    stop("n must be a positive finite number.")
  }
  return(switch(x@type,
    integer = unordered_set_reserve_i(x@pointer, n),
    double = unordered_set_reserve_d(x@pointer, n),
    string = unordered_set_reserve_s(x@pointer, n),
    boolean = unordered_set_reserve_b(x@pointer, n)
  ))
})
