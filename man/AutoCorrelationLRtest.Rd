\name{AutoCorrelationLRtest}
\alias{AutoCorrelationLRtest}
\title{Test for autocorrelation in the residuals of a RE-EM tree}
\description{
This function tests for autocorrelation in the residuals of a RE-EM tree using a likelihood ratio test.  The test keeps the tree structure of the RE-EM tree object fixed and uses a standard likelihood ratio test on the linear random effects model.
}
\usage{
AutoCorrelationLRtest(object, newdata=NULL, correlation=corAR1())
}
\arguments{
  \item{object}{A RE-EM tree}
  \item{newdata}{Dataset on which the test is to be performed; if none is given, the original dataset is used}
  \item{correlation}{Type of correlation to be tested for in the residuals.  The correlation can be any of type \code{\link{corClasses}}.}
}
\details{
In general, \code{newdata} is likely to be the data used to estimate \code{object}.  The RE-EM tree can be estimated with or without allowing for autocorrelation.  Because the estimated tree may differ depending on whether autocorrelation is allowed in the RE-EM tree estimation process, but we recommend testing based on the tree estimated with autocorrelation allowed and the tree estimated without autocorrelation allowed.
}
\value{
  \item{correlation}{Type of correlation used in testing}
  \item{loglik0}{Likelihood of the random effects model if there is no autocorrelation}
  \item{loglikAR}{Likelihood of the random effects model if autocorrelation (of type AR(1)) is estimated}
  \item{pvalue}{P-value of the likelihood ratio test}
}
\references{Sela, Rebecca J., and Simonoff, Jeffrey S., \dQuote{RE-EM Trees: A New Data Mining Approach for Longitudinal and Clustered Data}, \emph{Machine Learning} (forthcoming).}
\author{Rebecca Sela \email{rsela@stern.nyu.edu}}
\seealso{\code{\link{corClasses}}}
\examples{
data(simpleREEMdata)

# Estimation without autocorrelation
simpleEMresult<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1|ID)
# Estimation with autocorrelation
simpleEMresult2<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1|ID, correlation=corAR1())

# Autocorrelation test based on the first tree
AutoCorrelationLRtest(simpleEMresult, simpleREEMdata)
# Autocorrelation test based on the second tree
AutoCorrelationLRtest(simpleEMresult2, simpleREEMdata)
# Autocorrelation test with an alternative correlation structure
AutoCorrelationLRtest(simpleEMresult, simpleREEMdata, correlation=corCAR1())

}
\keyword{htest}
\keyword{tree}
\keyword{models}
