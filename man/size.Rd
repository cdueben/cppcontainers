% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/size.R
\name{size}
\alias{size}
\alias{size,CppSet-method}
\alias{size,CppUnorderedSet-method}
\alias{size,CppMultiset-method}
\alias{size,CppUnorderedMultiset-method}
\alias{size,CppMap-method}
\alias{size,CppUnorderedMap-method}
\alias{size,CppMultimap-method}
\alias{size,CppUnorderedMultimap-method}
\alias{size,CppStack-method}
\alias{size,CppQueue-method}
\alias{size,CppPriorityQueue-method}
\alias{size,CppVector-method}
\alias{size,CppDeque-method}
\alias{size,CppList-method}
\title{Get container size}
\usage{
size(x)
}
\arguments{
\item{x}{A CppSet, CppUnorderedSet, CppMultiset, CppUnorderedMultiset, CppMap, CppUnorderedMap, CppMultimap, CppUnorderedMultimap, CppStack, CppQueue, 
CppPriorityQueue, CppVector, CppDeque, or CppList object.}
}
\value{
Returns a numeric.
}
\description{
Obtain the number of elements in a container.
}
\examples{
s <- cpp_unordered_set(4:6)
s
# 6 5 4

size(s)
# [1] 3

}
\seealso{
\link{bucket_count}, \link{capacity}, \link{load_factor}, \link{max_size}, \link{resize}.
}
