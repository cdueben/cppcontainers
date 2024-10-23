# Utility functions used in other files

#' @importFrom Rcpp evalCpp
#' @useDynLib cppcontainers, .registration = TRUE

check_length <- function(i) {
  if(length(i) != 1L) {
    stop("The arguments must each be of length one.")
  }
}

check_type <- function(x_type, i) {
  type_match <- switch(x_type,
    integer = is.numeric(i),
    double = is.numeric(i),
    string = is.character(i),
    boolean = is.logical(i),
    FALSE
  )
  if(!type_match) {
    stop("from and to are not of the same data type as x.")
  }
}

assign_na <- function(x_type) {
  return(switch(x_type,
    integer = NA_integer_,
    double = NA_real_,
    string = NA_character_,
    boolean = NA
  ))
}
