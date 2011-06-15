\name{logLik}
\alias{logLik.REEMtree}
\title{Log-likelihood of a RE-EM tree}
\description{
This returns the log-likelihood of the effects model of a RE-EM tree. This is the log-likelihood of the random effects model estimated in the RE-EM tree.  (The regression tree is not associated with a log-likelihood.)
}
\usage{
logLik.REEMtree(object,...)
}
\arguments{
  \item{object}{an object of class \code{REEMtree}}
  \item{...}{further arguments passed to or from other methods}
}
\value{
the log-likelihood of the fitted effects model associated with \code{x}}
\references{Sela, Rebecca J., and Simonoff, Jeffrey S., \dQuote{RE-EM Trees: A New Data Mining Approach for Longitudinal and Clustered Data}, \emph{Machine Learning} (forthcoming).}
\author{Rebecca Sela \email{rsela@stern.nyu.edu}}
\seealso{\code{\link{REEMtree.object}}}
\examples{
data(simpleREEMdata)
REEMresult<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1|ID)
logLik(REEMresult)
}
\keyword{models}
\keyword{tree}

