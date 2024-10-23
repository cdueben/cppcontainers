#' Export data to R
#' 
#' Export C++ data to an R object.
#' 
#' @param x A \code{cppcontainers} object.
#' @param n The number of elements to export. If \code{n} is positive it exports elements starting at the front of the container. If \code{n} is negative, 
#' it starts at the back.
#' @param from The value from which to start exporting. If it is not a member of \code{x}, the export starts at the subsequent value. Ignored, 
#' when \code{n} is specified.
#' @param to The value until including which to export. Ignored, when \code{n} is specified.
#' 
#' @returns A vector.
#' 
#' @examples
#' s <- set(11:20)
#' r <- to_r(s)
#' r
#' [1] 11 12 13 14 15 16 17 18 19 20
#' 
#' to_r(s, n = 4)
#' [1] 11 12 13 14
#' 
#' to_r(s, n = -4)
#' [1] 20 19 18 17
#' 
#' to_r(s, from = 14)
#' [1] 14 15 16 17 18 19 20
#' 
#' to_r(s, to = 18)
#' [1] 11 12 13 14 15 16 17 18
#' 
#' to_r(s, from = 14, to = 18)
#' [1] 14 15 16 17 18
#' 

#' @export
methods::setGeneric("to_r", function(x, n = NULL, from = NULL, to = NULL) standardGeneric("to_r"))

#' @include classes.R

#' @export
methods::setMethod("to_r", methods::signature(x = "CppSet"), function(x, n = NULL, from = NULL, to = NULL) {
  use_n <- !is.null(n) && is.finite(n)
  reverse <- FALSE
  if(use_n) {
    check_length(n)
    if(!is.numeric(n)) {
      stop("n must be a number.")
    }
    if(n == 0L) {
      return(NULL)
    }
    if(n < 0L) {
      reverse <- TRUE
      n <- n * (-1)
    } else {
      reverse <- FALSE
    }
    use_from <- FALSE
    use_to <- FALSE
    from <- to <- assign_na(x@type)
  } else {
    n <- NA_integer_
    if(is.null(from)) {
      use_from <- FALSE
      from <- assign_na(x@type)
    } else {
      check_length(from)
      check_type(x@type, from)
      use_from <- TRUE
    }
    if(is.null(to)) {
      use_to <- FALSE
      to <- assign_na(x@type)
    } else {
      check_length(to)
      check_type(x@type, to)
      use_to <- TRUE
    }
  }
  return(switch(x@type,
    integer = set_to_r_i(x@pointer, use_n, n, reverse, use_from, from, use_to, to),
    double = set_to_r_d(x@pointer, use_n, n, reverse, use_from, from, use_to, to),
    string = set_to_r_s(x@pointer, use_n, n, reverse, use_from, from, use_to, to),
    boolean = set_to_r_b(x@pointer, use_n, n, reverse, use_from, from, use_to, to)
  ))
})

#' @export
methods::setMethod("to_r", methods::signature(x = "CppUnorderedSet"), function(x, n = NULL) {
  if(is.null(n)) {
    n <- 0L
  } else {
    check_length(n)
    if(!is.numeric(n) || !is.finite(n) || n <= 0L) {
      stop("n must be a finite number.")
    }
    if(n == 0L) {
      return(NULL)
    }
  }
  return(switch(x@type,
    integer = unordered_set_to_r_i(x@pointer, n),
    double = unordered_set_to_r_d(x@pointer, n),
    string = unordered_set_to_r_s(x@pointer, n),
    boolean = unordered_set_to_r_b(x@pointer, n)
  ))
})
