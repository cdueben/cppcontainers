% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bucket_count.R
\name{bucket_count}
\alias{bucket_count}
\alias{bucket_count,CppUnorderedSet-method}
\alias{bucket_count,CppUnorderedMultiset-method}
\alias{bucket_count,CppUnorderedMap-method}
\alias{bucket_count,CppUnorderedMultimap-method}
\title{Get the number of buckets}
\usage{
bucket_count(x)
}
\arguments{
\item{x}{A CppUnorderedSet, CppUnorderedMultiset, CppUnorderedMap, CppUnorderedMultimap object.}
}
\value{
Returns the container's number of buckets.
}
\description{
Obtain the container's number of buckets.
}
\examples{
s <- cpp_unordered_set(6:10)
s
# 10 9 8 7 6

bucket_count(s)
# [1] 13

}
\seealso{
\link{max_bucket_count}, \link{load_factor}, \link{size}.
}
