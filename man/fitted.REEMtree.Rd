\name{fitted.REEMtree}
\alias{fitted.REEMtree}
\title{Extract the fitted values from a RE-EM tree}
\description{
This function extracts the fitted values from the LME object underlying the RE-EM tree.  The fitted values are the fixed effects (from the tree) plus the estimated contributions of the random effects to the fitted values at grouping levels less or equal to the level given.}
\usage{
 \method{fitted}{REEMtree}(object, level, asList, ...)
}
\arguments{
  \item{object}{an object of class \code{REEMtree}}
  \item{level}{the level of random effects used in creating fitted values.  Level 0 is fixed effects; levels increase with the grouping of random effects.  Default is the highest level.}
  \item{asList}{an optional logical value. If \code{TRUE} and a single value is given in level, the returned object is a list with the fitted values split by groups; otherwise the returned value is either a vector or a data frame, according to the length of level. Defaults to \code{FALSE}.}
  \item{...}{some methods for this generic require additional arguments; none are used here.}
}
\value{
If the level is a single value, the result is a vector or list (depending on \code{asList}) with the fitted values.  Otherwise, the result is a data frame with columns given by the fitted values at different levels.
}
\references{Sela, Rebecca J., and Simonoff, Jeffrey S., \dQuote{RE-EM Trees: A Data Mining Approach for Longitudinal and Clustered Data}, \emph{Machine Learning} (2011).}
\author{Rebecca Sela \email{rsela@stern.nyu.edu}}
\seealso{\code{\link[stats]{fitted}}, \code{\link{REEMtree.object}}}
\examples{
data(simpleREEMdata)
REEMresult<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1|ID)
fitted(REEMresult)
}
\keyword{models}
