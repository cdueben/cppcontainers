% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/empty.R
\name{empty}
\alias{empty}
\alias{empty,CppSet-method}
\alias{empty,CppUnorderedSet-method}
\alias{empty,CppMultiset-method}
\alias{empty,CppUnorderedMultiset-method}
\alias{empty,CppMap-method}
\alias{empty,CppUnorderedMap-method}
\alias{empty,CppMultimap-method}
\alias{empty,CppUnorderedMultimap-method}
\alias{empty,CppStack-method}
\alias{empty,CppQueue-method}
\alias{empty,CppPriorityQueue-method}
\alias{empty,CppVector-method}
\alias{empty,CppDeque-method}
\alias{empty,CppForwardList-method}
\alias{empty,CppList-method}
\title{Check emptiness}
\usage{
empty(x)
}
\arguments{
\item{x}{A \code{cppcontainers} object.}
}
\value{
Returns \code{TRUE}, if the container is empty, and \code{FALSE} otherwise.
}
\description{
Check, if a container is empty, i.e. does not contain elements.
}
\examples{
v <- cpp_vector(4:6)
v
# 4 5 6

clear(v)
empty(v)
# [1] TRUE

}
