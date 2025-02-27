% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/list.R
\name{cpp_list}
\alias{cpp_list}
\title{Create list}
\usage{
cpp_list(x)
}
\arguments{
\item{x}{An integer, numeric, character, or logical vector.}
}
\value{
Returns a CppList object referencing a list in C++.
}
\description{
Create a list, i.e. a doubly-linked list.
}
\details{
Doubly-linked means that list elements store a reference both to the previous element and to the following element. This container type, thus, 
requires more RAM than a singly-linked list does, but can be iterated in both directions.

C++ list methods implemented in this package are \link{assign}, \link{back}, \link{clear}, \link{emplace}, \link{emplace_back}, \link{emplace_front}, 
\link{empty}, \link{erase}, \link{front}, \link{insert}, \link{max_size}, \link{merge}, \link{pop_back}, \link{pop_front}, \link{push_back}, 
\link{push_front}, \link{remove.}, \link{resize}, \link{reverse}, \link{size}, \link{sort}, \link{splice}, and \link{unique}. The package also adds the 
\link{==} operator and various helper functions (\link{print}, \link{to_r}, \link{type}).

All object-creating methods in this package begin with \code{cpp_} to avoid clashes with functions from other packages, such as \code{utils::stack} and 
\code{base::vector}.
}
\examples{
l <- cpp_list(4:6)
l
# 4 5 6

push_back(l, 1L)
l
# 4 5 6 1

push_front(l, 2L)
l
# 2 4 5 6 1

}
\seealso{
\link{cpp_vector}, \link{cpp_deque}, \link{cpp_forward_list}.
}
