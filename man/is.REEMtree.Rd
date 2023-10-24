\name{is.REEMtree}
\alias{is.REEMtree}
\title{Is a RE-EM tree object}
\description{
This function tests whether an object is of the \code{REEMtree} class.
}
\usage{
   is.REEMtree(object)
}
\arguments{
  \item{object}{any R object}
}
\value{
    \code{TRUE} if the object is of the \code{REEMtree} type
}
\references{Sela, Rebecca J., and Simonoff, Jeffrey S., \dQuote{RE-EM Trees: A Data Mining Approach for Longitudinal and Clustered Data}, \emph{Machine Learning} (2011).}
\author{Rebecca Sela \email{rsela@stern.nyu.edu}}
\examples{
data(simpleREEMdata)
REEMresult<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1|ID)
is.REEMtree(REEMresult)
}
\keyword{tree}
\keyword{models}
\keyword{classes}
