#' Print container data
#' 
#' Print the data in a container.
#' 
#' @param x A \code{cppcontainers} object.
#' @param ... An ellipsis for compatibility with the generic method. Accepts the parameters \code{n}, \code{from}, and \code{to}. See \link{to_r} for their 
#' effects. A difference to \link{to_r} is that their omission does not induce the function to print all elements, but to print the first 100 elements.
#' 
#' @returns Invisibly returns \code{NULL}.
#' 
#' @examples
#' s <- set(10:120)
#' 
#' print(s)
#' First 100 elements: 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 
#' 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 
#' 103 104 105 106 107 108 109
#' 
#' print(s, n = 10)
#' 10 11 12 13 14 15 16 17 18 19
#' 
#' print(s, from = 42, to = 44)
#' 42 43 44
#' 
#' @include classes.R

#' @export
methods::setMethod("print", methods::signature(x = "CppSet"), function(x, ...) {
  args <- list(...)
  n <- args[["n"]]
  from <- args[["from"]]
  to <- args[["to"]]
  use_n <- FALSE
  reverse <- FALSE
  if(is.null(n)) {
    if(is.null(from) && is.null(to)) {
      n <- 100L
      use_n <- TRUE
    }
  } else {
    check_length(n)
    if(!is.numeric(n)) {
      stop("n must be a number.")
    }
    if(n == 0L) {
      return(invisible(NULL))
    }
    if(!is.finite(n)) {
      n <- 0L
    }
    use_n <- TRUE
    if(n < 0L) {
      reverse <- TRUE
      n <- n * (-1)
    } else {
      reverse <- FALSE
    }
  }
  if(use_n) {
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
    integer = set_print_i(x@pointer, use_n, n, reverse, use_from, from, use_to, to),
    double = set_print_d(x@pointer, use_n, n, reverse, use_from, from, use_to, to),
    string = set_print_s(x@pointer, use_n, n, reverse, use_from, from, use_to, to),
    boolean = set_print_b(x@pointer, use_n, n, reverse, use_from, from, use_to, to)
  ))
})

#' @export
methods::setMethod("print", methods::signature(x = "CppUnorderedSet"), function(x, ...) {
  n <- list(...)[["n"]]
  if(is.null(n)) {
    n <- 100L
  } else {
    check_length(n)
    if(!is.numeric(n)) {
      stop("n must be a number.")
    }
    if(n == 0L) {
      return(invisible(NULL))
    }
    if(!is.finite(n)) {
      n <- 0L
    }
  }
  return(switch(x@type,
    integer = unordered_set_print_i(x@pointer, n),
    double = unordered_set_print_d(x@pointer, n),
    string = unordered_set_print_s(x@pointer, n),
    boolean = unordered_set_print_b(x@pointer, n)
  ))
})
