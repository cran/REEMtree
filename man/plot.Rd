\name{plot}
\alias{plot.REEMtree}
\title{Plot the RE-EM tree}
\description{
Plots the regression tree associated with a RE-EM tree.
}
\usage{
plot.REEMtree(x, text = TRUE, ...)
}
\arguments{
  \item{x}{a fitted object of class \code{REEMtree}}
  \item{text}{if \code{TRUE}, the text of the tree will be plotted on the tree automatically.}
  \item{...}{further arguments passed to or from other methods}
}
\value{
the coordinates of the nodes are returned as a list, with components \code{x} and \code{y}.
}
\references{Sela, Rebecca J., and Simonoff, Jeffrey S., \dQuote{RE-EM Trees: A New Data Mining Approach for Longitudinal Data}.}
\author{Rebecca Sela \email{rsela@stern.nyu.edu}}
\seealso{\code{\link{REEMtree}}, \code{\link{plot.rpart}}}
\examples{
data(simpleREEMdata)
REEMresult<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1|ID)
plot(REEMresult)
}
\keyword{tree}
\keyword{hplot}
