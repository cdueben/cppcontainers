#' Set minimum bucket count and rehash
#' 
#' Set a container's minimum bucket count and rehash.
#' 
#' @param x A \code{cppcontainers} object
#' @param n The minimum number of buckets. A value of \code{0} forces an unconditional rehash.
#' 
#' @returns Invisibly returns \code{NULL}.
#' 
#' @examples
#' s <- unordered_set(1:10)
#' rehash(s)
#' rehash(s, 3)
#' 

#' @export
methods::setGeneric("rehash", function(x, n = 0) standardGeneric("rehash"))

#' @include classes.R

#' @export
methods::setMethod("rehash", methods::signature(x = "CppUnorderedSet"), function(x, n = 0) {
  if(length(n) != 1L || !is.numeric(n) || !is.finite(n) || n < 0L) {
    stop("n must be a weakly positive finite number.")
  }
  return(switch(x@type,
    integer = unordered_set_rehash_i(x@pointer, n),
    double = unordered_set_rehash_d(x@pointer, n),
    string = unordered_set_rehash_s(x@pointer, n),
    boolean = unordered_set_rehash_b(x@pointer, n)
  ))
})
