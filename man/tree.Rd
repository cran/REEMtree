\name{tree}
\alias{tree}
\alias{tree.REEMtree}
\title{Extract the regression tree associated with a RE-EM tree}
\description{
Returns the fitted \code{rpart} object associated with a \code{REEMtree} object.
}
\usage{
tree(object,...)
}
\arguments{
  \item{object}{an object of class \code{REEMtree}}
  \item{...}{further arguments passed to or from other methods}
}
\value{
the fitted regression tree associated with the \code{REEMtree} object
}
\references{Sela, Rebecca J., and Simonoff, Jeffrey S., \dQuote{RE-EM Trees: A Data Mining Approach for Longitudinal and Clustered Data}, \emph{Machine Learning} (2011).}
\author{Rebecca Sela \email{rsela@stern.nyu.edu}}
\seealso{\code{\link{rpart.object}}, \code{\link{REEMtree.object}}}
\examples{
data(simpleREEMdata)
REEMresult<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1|ID)
tree.REEMtree(REEMresult)
tree(REEMresult)
}
\keyword{models}
\keyword{tree}
