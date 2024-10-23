#' @export
methods::setGeneric("max_bucket_count", function(x) standardGeneric("max_bucket_count"))

#' @include classes.R

#' @export
methods::setMethod("max_bucket_count", methods::signature(x = "CppUnorderedSet"), function(x) {
  return(switch(x@type,
    integer = unordered_set_max_bucket_count_i(x@pointer),
    double = unordered_set_max_bucket_count_d(x@pointer),
    string = unordered_set_max_bucket_count_s(x@pointer),
    boolean = unordered_set_max_bucket_count_b(x@pointer)
  ))
})
