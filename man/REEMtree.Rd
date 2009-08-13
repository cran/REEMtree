\name{REEMtree}
\alias{REEMtree}
\title{Create a RE-EM tree}
\description{
Fit a RE-EM tree to data.  This estimates a regression tree combined with a linear random effects model.
}
\usage{
REEMtree(formula, data, random, subset = NULL, 
	initialRandomEffects = rep(0, TotalObs), ErrorTolerance = 0.001, 
	MaxIterations = 1000, verbose = FALSE, 
	tree.control = rpart.control(), lme.control = lmeControl(returnObject = TRUE), 
	method = "REML", correlation = NULL)
}
\arguments{
  \item{formula}{a formula, as in the \code{lm} or \code{rpart} function}
  \item{data}{a data frame in which to interpret the variables named in the formula (unlike in \code{lm} or \code{rpart}, this is not optional)}
  \item{random}{a description of the random effects, as a formula of the form \code{~1|g}, where \code{g} is the grouping variable}
  \item{subset}{an optional logical vector indicating the subset of the rows of data that should be used in the fit. All observations are included by default.}
  \item{initialRandomEffects}{an optional vector giving initial values for the random effects to use in estimation}
  \item{ErrorTolerance}{when the difference in the likelihoods of the linear models of two consecutive iterations is less than this value, the RE-EM tree has converged}
  \item{MaxIterations}{maximum number of iterations allowed in estimation}
  \item{verbose}{if \code{TRUE}, the current estimate of the RE-EM tree will be printed after each iteration}
  \item{tree.control}{a list of control values for the estimation algorithm to replace the default values used to control the \code{rpart} algorithm. Defaults to an empty list.}
  \item{lme.control}{a list of control values for the estimation algorithm to replace the default values returned by the function \code{lmeControl}. Defaults to an empty list.}
  \item{method}{whether the linear model should be estimated with \code{ML} or \code{REML} }
  \item{correlation}{an optional \code{corStruct} object describing the within-group correlation structure; the available classes are given in \code{\link{corClasses}}}
}
\value{
  an object of class \code{REEMtree}
}
\references{Sela, Rebecca J., and Simonoff, Jeffrey S., \dQuote{RE-EM Trees: A New Data Mining Approach for Longitudinal Data}.}
\author{Rebecca Sela \email{rsela@stern.nyu.edu}}
\seealso{\code{\link{rpart}}, \code{\link{nlme}}, \code{\link{REEMtree.object}}, \code{\link{corClasses}}}
\examples{
data(simpleREEMdata)
REEMresult<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1|ID)

# Estimation allowing for autocorrelation
REEMresult<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1|ID, 
	correlation=corAR1())

# Random parameters model for the random effects
REEMresult<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1+X|ID)

# Estimation with a subset
sub <- rep(c(rep(TRUE, 10), rep(FALSE, 2)), 50)
REEMresult<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1|ID, 
	subset=sub)

# Dataset from the R library "AER"
data("Grunfeld", package = "AER")
REEMtree(invest ~ value + capital, data=Grunfeld, random=~1|firm)
REEMtree(invest ~ value + capital, data=Grunfeld, random=~1|firm, correlation=corAR1())
REEMtree(invest ~ value + capital, data=Grunfeld, random=~1+year|firm)
REEMtree(invest ~ value + capital, data=Grunfeld, random=~1+year|firm, correlation=corAR1())
REEMtree(invest ~ value + capital, data=Grunfeld, random=~1|firm/year)

}
\keyword{tree}
\keyword{models}
