\name{print}
\alias{print.REEMtree}
\title{Print a RE-EM Tree object}
\description{
This function prints a description of a fitted RE-EM tree object.
}
\usage{
print.REEMtree(x,...)
}
\arguments{
  \item{x}{fitted model of class \code{REEMtree}}
  \item{...}{further arguments passed to or from other methods}
}
\details{
This function is a method for the generic function print for class \code{REEMtree}. It can be invoked by calling print for an object of class \code{REEMtree}, or by calling \code{print.REEMtree} directly for an object of the corresponding type. }
% RPART's print uses this...  Hopefully this is the right tag; otherwise, go back to value
\section{Side Effects}{
Prints representations of the regression tree and the random effects model that comprise a RE-EM tree.
}
\references{Sela, Rebecca J., and Simonoff, Jeffrey S., \dQuote{RE-EM Trees: A Data Mining Approach for Longitudinal and Clustered Data}, \emph{Machine Learning} (2011).}
\author{Rebecca Sela \email{rsela@stern.nyu.edu}}
\seealso{\code{\link{print.rpart}}, \code{\link{REEMtree.object}}}
\examples{
data(simpleREEMdata)
REEMresult<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1|ID)
print(REEMresult)
}
\keyword{print}
\keyword{tree}
