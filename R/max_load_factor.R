#' Get or set the maximum load factor
#' 
#' #' Get or set the maximum load factor.
#' 
#' @param x A \code{cppcontainers} object
#' @param max_load The containers maximum load factor, i.e. number of elements per bucket. The default \code{NULL} argument retrieves the container's 
#' current maximum load factor. A numeric argument sets it to the specified value.
#' 
#' @returns Returns the numeric current maximum load factor, if \code{max_load} is \code{NULL}. Invisibly returns \code{NULL}, if \code{max_load} is 
#' numeric.
#' 
#' @examples
#' s <- unordered_set(1:10)
#' max_load_factor(s)
#' [1] 1
#' 
#' max_load_factor(s, 3)
#' max_load_factor(s)
#' [1] 3
#' 

#' @export
methods::setGeneric("max_load_factor", function(x, max_load = NULL) standardGeneric("max_load_factor"))

#' @include classes.R

#' @export
methods::setMethod("max_load_factor", methods::signature(x = "CppUnorderedSet"), function(x, max_load = NULL) {
  if(is.null(max_load)) {
    return(switch(x@type,
      integer = unordered_set_max_load_factor_i_get(x@pointer),
      double = unordered_set_max_load_factor_d_get(x@pointer),
      string = unordered_set_max_load_factor_s_get(x@pointer),
      boolean = unordered_set_max_load_factor_b_get(x@pointer)
    ))
  } else {
    if(length(max_load) != 1L || !is.numeric(max_load) || !is.finite(n) || n <= 0L) {
      stop("max_load must be either NULL or a positive finite number.")
    }
    return(switch(x@type,
      integer = unordered_set_max_load_factor_i_set(x@pointer, max_load),
      double = unordered_set_max_load_factor_d_set(x@pointer, max_load),
      string = unordered_set_max_load_factor_s_set(x@pointer, max_load),
      boolean = unordered_set_max_load_factor_b_set(x@pointer, max_load)
    ))
  }
})
