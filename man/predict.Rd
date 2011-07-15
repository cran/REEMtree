\name{predict}
\alias{predict.REEMtree}
\title{Predictions from a regression tree with individual-specific effects}
\description{
Returns a vector of predictions from a fitted RE-EM Tree.  Predictions are based on the node of the tree in which the new observation would fall and (optionally) an estimated random effect for the observation.
}
\usage{
predict.REEMtree(object, newdata, id = NULL, 
	EstimateRandomEffects = TRUE, ...)
}
\arguments{
  \item{object}{a fitted \code{REEMtree}}
  \item{newdata}{an data frame to be used for obtaining the predictions. All variables used in the fixed and random effects models, including the group identifier, must be present in the data frame.  New values of the group identifier are allowed.  Unlike in \code{predict.lme} and \code{predict.rpart}, the data frame is required}
  \item{id}{a string containing the name of the variable that is used to identify the groups.  This is required if \code{EstimateRandomEffects=TRUE} and  \code{newdata} does not match the data used to estimate the random effects model that created \code{object}.}
  \item{EstimateRandomEffects}{if \code{TRUE}, the fitted effects will be included in the estimates and effects for new groups will be estimated wherever the target variable is not missing.  If \code{FALSE} or if the random effect cannot be estimated, random effects are set to 0, so that only the fixed effects based on the regression tree are used.}
  \item{\dots}{additional arguments that will be passed through to \code{rpart}}
}
\details{
If \code{EstimateRandomEffects=TRUE} and a group was not used in the original estimation, its random effect must be estimated.  If there are no non-missing values of the target variable for this group, then the new effect is set to 0.  

If there are non-missing values of the target variable, then the random effect is estimated based on the estimated variance of the errors and variance of the random effects in the fitted model.  See Equation 3.2 of Laird and Ware (1982) for the precise relationship.  

Important note: In this implementation, estimation of group effects for new groups can be used only with group-specific intercepts are estimated with only one grouping variable.
}
\value{
a vector containing the predicted values
}
\references{Sela, Rebecca J., and Simonoff, Jeffrey S., \dQuote{RE-EM Trees: A Data Mining Approach for Longitudinal Data}, \emph{Machine Learning}, 2011; Laird, N. M., and J. H. Ware (1982), \dQuote{Random-effects models for longitudinal data}, \emph{Biometrics} 38: 963-974}
\author{Rebecca Sela \email{rsela@stern.nyu.edu}}
\seealso{\code{\link{predict.nlme}}, \code{\link{predict.rpart}}}
\examples{
data(simpleREEMdata)
REEMresult<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1|ID)
predict(REEMresult, simpleREEMdata, EstimateRandomEffects=FALSE)
predict(REEMresult, simpleREEMdata, id=simpleREEMdata$ID, EstimateRandomEffects=TRUE)

# Estimation based on a subset that excludes the last two time series, 
# with predictions for all observations
sub <- rep(c(rep(TRUE, 10), rep(FALSE, 2)), 50)
REEMresult<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1|ID, 
	subset=sub)
pred1 <- predict(REEMresult, simpleREEMdata, EstimateRandomEffects=FALSE)
pred2 <- predict(REEMresult, simpleREEMdata, id=simpleREEMdata$ID, EstimateRandomEffects=TRUE)

# Estimation based on a subset that excludes the last five individuals, 
# with predictions for all observations
sub <- c(rep(TRUE, 540), rep(FALSE, 60))
REEMresult<-REEMtree(Y~D+t+X, data=simpleREEMdata, random=~1|ID, 
	subset=sub)
pred3 <- predict(REEMresult, simpleREEMdata, EstimateRandomEffects=FALSE)
pred4 <- predict(REEMresult, simpleREEMdata, id=simpleREEMdata$ID, EstimateRandomEffects=TRUE)

}
\keyword{models}
\keyword{tree}
