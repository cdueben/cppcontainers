% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/print.R
\name{print}
\alias{print}
\alias{print,CppSet-method}
\alias{print,CppUnorderedSet-method}
\alias{print,CppMultiset-method}
\alias{print,CppUnorderedMultiset-method}
\alias{print,CppMap-method}
\alias{print,CppUnorderedMap-method}
\alias{print,CppMultimap-method}
\alias{print,CppUnorderedMultimap-method}
\alias{print,CppStack-method}
\alias{print,CppQueue-method}
\alias{print,CppPriorityQueue-method}
\alias{print,CppVector-method}
\alias{print,CppDeque-method}
\alias{print,CppForwardList-method}
\alias{print,CppList-method}
\title{Print container data}
\usage{
print(x, ...)
}
\arguments{
\item{x}{A \code{cppcontainers} object.}

\item{...}{An ellipsis for compatibility with the generic method. Accepts the parameters \code{n}, \code{from}, and \code{to}. See \link{to_r} for their 
effects. A difference to \link{to_r} is that their omission does not induce the function to print all elements, but to print the first 100 elements. 
Stacks, queues, and priority queues ignore the ellipsis and only print the top or first element.}
}
\value{
Invisibly returns \code{NULL}.
}
\description{
Print the data in a container.
}
\details{
\code{print} has no side effects. Unlike \link{to_r}, it does not remove elements from stacks or queues.
}
\examples{
s <- cpp_set(4:9)

print(s)
# 4 5 6 7 8 9

print(s, n = 3)
# 4 5 6

print(s, n = -3)
# 9 8 7

print(s, from = 5, to = 7)
# 5 6 7

v <- cpp_vector(4:9)

print(v, n = 2)
# 4 5

print(v, from = 2, to = 3)
# 5 6

print(v, from = 3)
# 6 7 8 9

}
\seealso{
\link{sorting}, \link{to_r}, \link{type}.
}
