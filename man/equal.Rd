% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/operators.R
\name{==,CppSet,CppSet-method}
\alias{==,CppSet,CppSet-method}
\alias{==,CppUnorderedSet,CppUnorderedSet-method}
\alias{==,CppMultiset,CppMultiset-method}
\alias{==,CppUnorderedMultiset,CppUnorderedMultiset-method}
\alias{==,CppMap,CppMap-method}
\alias{==,CppUnorderedMap,CppUnorderedMap-method}
\alias{==,CppMultimap,CppMultimap-method}
\alias{==,CppUnorderedMultimap,CppUnorderedMultimap-method}
\alias{==,CppStack,CppStack-method}
\alias{==,CppQueue,CppQueue-method}
\alias{==,CppVector,CppVector-method}
\alias{==,CppDeque,CppDeque-method}
\alias{==,CppForwardList,CppForwardList-method}
\alias{==,CppList,CppList-method}
\title{Check equality}
\usage{
\S4method{==}{CppSet,CppSet}(e1, e2)

\S4method{==}{CppUnorderedSet,CppUnorderedSet}(e1, e2)

\S4method{==}{CppMultiset,CppMultiset}(e1, e2)

\S4method{==}{CppUnorderedMultiset,CppUnorderedMultiset}(e1, e2)

\S4method{==}{CppMap,CppMap}(e1, e2)

\S4method{==}{CppUnorderedMap,CppUnorderedMap}(e1, e2)

\S4method{==}{CppMultimap,CppMultimap}(e1, e2)

\S4method{==}{CppUnorderedMultimap,CppUnorderedMultimap}(e1, e2)

\S4method{==}{CppStack,CppStack}(e1, e2)

\S4method{==}{CppQueue,CppQueue}(e1, e2)

\S4method{==}{CppVector,CppVector}(e1, e2)

\S4method{==}{CppDeque,CppDeque}(e1, e2)

\S4method{==}{CppForwardList,CppForwardList}(e1, e2)

\S4method{==}{CppList,CppList}(e1, e2)
}
\arguments{
\item{e1}{A CppSet, CppUnorderedSet, CppMultiset, CppUnorderedMultiset, CppMap, CppUnorderedMap, CppMultimap, CppUnorderedMultimap, CppStack, CppQueue, 
CppVector, CppDeque, CppForwardList, or CppList object.}

\item{e2}{A CppSet, CppUnorderedSet, CppMultiset, CppUnorderedMultiset, CppMap, CppUnorderedMap, CppMultimap, CppUnorderedMultimap, CppStack, CppQueue, 
CppVector, CppDeque, CppForwardList, or CppList object of the same class and data type as \code{e1}.}
}
\value{
Returns \code{TRUE}, if the containers hold the same data and \code{FALSE} otherwise.
}
\description{
Check, if two containers hold identical data.
}
\examples{
x <- cpp_set(1:10)
y <- cpp_set(1:10)
x == y
# [1] TRUE

y <- cpp_set(1:11)
x == y
# [1] FALSE

}
\seealso{
\link{contains}, \link{type}, \link{sorting}.
}
