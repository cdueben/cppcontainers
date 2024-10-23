#' @include classes.R

methods::setMethod("show", methods::signature(object = "CppSet"), function(object) {
  return(switch(object@type,
    integer = set_show_i(object@pointer),
    double = set_show_d(object@pointer),
    string = set_show_s(object@pointer),
    boolean = set_show_b(object@pointer)
  ))
})

methods::setMethod("show", methods::signature(object = "CppUnorderedSet"), function(object) {
  return(switch(object@type,
    integer = unordered_set_show_i(object@pointer),
    double = unordered_set_show_d(object@pointer),
    string = unordered_set_show_s(object@pointer),
    boolean = unordered_set_show_b(object@pointer)
  ))
})
