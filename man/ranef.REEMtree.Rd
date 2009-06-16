\name{ranef.REEMtree}
\alias{ranef.REEMtree}
\title{Extract the estimated random effects from a RE-EM tree}
\description{
This function extracts the estimated random effects from a fitted RE-EM tree.}
\usage{
ranef.REEMtree(object,...)
}
\arguments{
  \item{object}{an object of class \code{REEMtree}}
  \item{...}{further arguments passed to or from other methods}
}
\value{
a vector containing the estimated random effects
}
\references{Sela, Rebecca J., and Simonoff, Jeffrey S., \dQuote{RE-EM Trees: A New Data Mining Approach for Longitudinal Data}.}
\author{Rebecca Sela \email{rsela@stern.nyu.edu}}
\seealso{\code{\link[nlme]{ranef}}, \code{link{REEMtree.object}}}
\examples{
data(simpleREEMdata)
REEMresult<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1|ID)
ranef(REEMresult)
}
\keyword{models}
