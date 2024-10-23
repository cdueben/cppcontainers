
#' @include utils.R

# Set
methods::setClass("CppSet",
  slots = c(
    pointer = "externalptr",
    type = "character"
  )
)

# Unordered set
methods::setClass("CppUnorderedSet",
  slots = c(
    pointer = "externalptr",
    type = "character"
  )
)
