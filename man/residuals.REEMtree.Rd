\name{residuals.REEMtree}
\alias{residuals.REEMtree}
\title{Extract the residuals from a RE-EM tree}
\description{
This function extracts the residuals from the LME object underlying the RE-EM tree.  The residuals depend on the fixed effects (from the tree) plus the estimated contributions of the random effects to the fitted values at grouping levels less or equal to the level given. }
\usage{
residuals.REEMtree(object, level, type, asList, ...)
}
\arguments{
  \item{object}{an object of class \code{REEMtree}}
  \item{level}{the level of random effects used in creating residuals.  Level 0 is fixed effects only; levels increase with the grouping of random effects.  Default is the highest level.}
  \item{type}{optional character string specifying the type of residuals to be used. If \code{"response"}, the "raw" residuals (observed - fitted) are used. If \code{"pearson"}, the standardized residuals (raw residuals divided by the corresponding standard errors) are used. If \code{"normalized"}, the normalized residuals (standardized residuals pre-multiplied by the inverse square-root factor of the estimated error correlation matrix) are used. Only the first character needs to be provided. Defaults to \code{"pearson"}.}
  \item{asList}{an optional logical value. If \code{TRUE} and a single value is given in level, the returned object is a list with the residuals split by groups; otherwise the returned value is either a vector or a data frame, according to the length of level. Defaults to \code{FALSE}.}
  \item{...}{some methods for this generic require additional arguments; none are used here.}
}
\value{
If the level is a single value, the result is a vector or list (depending on \code{asList}) with the residuals.  Otherwise, the result is a data frame with columns given by the residuals at different levels.
}
\references{Sela, Rebecca J., and Simonoff, Jeffrey S., \dQuote{RE-EM Trees: A Data Mining Approach for Longitudinal and Clustered Data}, \emph{Machine Learning} (2011).}
\author{Rebecca Sela \email{rsela@stern.nyu.edu}}
\seealso{\code{\link[stats]{residuals}}, \code{\link{REEMtree.object}}}
\examples{
data(simpleREEMdata)
REEMresult<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1|ID)
residuals(REEMresult)
}
\keyword{models}
