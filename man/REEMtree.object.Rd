\name{REEMtree.object}
\alias{REEMtree.object}
\title{Random Effects/Expectation Maximization (RE-EM) Tree Object}
\description{
Object representing a fitted \code{REEMtree}.
}
\value{

\item{Tree}{Fitted \code{rpart} tree associated with the fitted RE-EM tree}
\item{EffectModel}{fitted \code{lme} object associated with the fitted RE-EM tree}
\item{RandomEffects}{vector of estimated random effects}
\item{BetweenMatrix}{estimated variance of the random effects}
\item{ErrorVariance}{estimated variance of the errors}
\item{data}{the data frame used to estimate the RE-EM tree}
\item{logLik}{log likelihood of the linear model for the random effects}
\item{IterationsUsed}{number of iterations required to fit the \code{REEMtree}}
\item{Formula}{formula used in fitting the \code{REEMtree}}
\item{Random}{description of the random effects used in fitting the \code{REEMtree}}
\item{Groups}{the vector of group identifiers used in estimation}
\item{Subset}{the logical vector indicating the subset of the rows of data used in the fit}
\item{ErrorTolerance}{the error tolerance used in estimation}
\item{correlation}{the correlation structure used in fitting the linear model}
\item{residuals}{estimated residuals}
\item{method}{method (\code{ML} or \code{REML}) used in estimating the linear random effects model}
\item{lme.control}{parameters used to control fitting the linear random effects mdoel}
\item{tree.control}{parameters used to control fitting the regression tree}

}
\references{Sela, Rebecca J., and Simonoff, Jeffrey S., \dQuote{RE-EM Trees: A New Data Mining Approach for Longitudinal and Clustered Data}, \emph{Machine Learning} (forthcoming).}
\author{Rebecca Sela \email{rsela@stern.nyu.edu}}
\seealso{\code{\link{rpart}}, \code{\link{nlme}}, \code{\link{REEMtree}}}
\examples{
data(simpleREEMdata)
REEMresult<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1|ID)
}
\keyword{tree}
\keyword{models}
