\name{simpleREEMdata}
\docType{data}
\alias{simpleREEMdata}
\title{Sample Data for RE-EM trees}
\description{
This data set is consists of a panel of 50 individuals with 12 observations per individual.  The data is based on a regression tree with an initial split based on a dummy variable (\code{D}) and a second split based on time in the branch where \code{D=1}.  The observations include both randomly generated individual-specific effects and observation-specific errors.
}
\format{
The data has 600 rows and 5 columns.  The columns are: 
\itemize{
\item{\code{Y}}{the target variable}
\item{\code{t}}{a numeric predictor ("time")}
\item{\code{D}}{a catergorical predictor with two levels, 0 and 1}
\item{\code{ID}}{the identifier for each individual}
\item{\code{X}}{another covariate (which is intentionally unrelated to the target variable)}
}
}
\references{Sela, Rebecca J., and Simonoff, Jeffrey S., \dQuote{RE-EM Trees: A New Data Mining Approach for Longitudinal Data}.}
\keyword{datasets}