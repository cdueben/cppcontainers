% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/flip.R
\name{flip}
\alias{flip}
\alias{flip,CppVector-method}
\title{Toggle boolean values}
\usage{
flip(x)
}
\arguments{
\item{x}{A CppVector object of type boolean.}
}
\value{
Invisibly returns \code{NULL}.
}
\description{
Toggle boolean values in a vector.
}
\details{
Sets TRUE to FALSE and FALSE to TRUE.
}
\examples{
v <- cpp_vector(c(TRUE, TRUE, FALSE))
v
# TRUE TRUE FALSE

flip(v)
v
# FALSE FALSE TRUE

}
\seealso{
\link{cpp_vector}.
}
