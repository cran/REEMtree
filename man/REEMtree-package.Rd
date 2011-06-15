\name{REEMtree-package}
\alias{REEMtree-package}
\docType{package}
\title{
Regression Trees with Random Effects for Longitudinal (Panel) Data
}
\description{
This package estimates regression trees with random effects as a way to use data mining techniques to describe longitudinal or panel data.
}
\details{
\tabular{ll}{
Package: \tab REEMtree\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2009-05-07\cr
License: \tab GPL \cr
}
}
\author{Rebecca Sela \email{rsela@stern.nyu.edu}}
\references{Sela, Rebecca J., and Simonoff, Jeffrey S., \dQuote{RE-EM Trees: A New Data Mining Approach for Longitudinal and Clustered Data}, \emph{Machine Learning} (forthcoming).}
% \keyword{package} - NOT SURE WHY THIS DOESN'T WORK!
\keyword{tree}
\examples{
data(simpleREEMdata)
REEMresult<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1|ID)
print(REEMresult)
}
