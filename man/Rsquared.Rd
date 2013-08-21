\name{Rsquared}
\alias{Rsquared}
\title{
Squared-R
}
\description{
'Rsquared' is used to calculate coefficient of determination. 
}
\usage{
Rsquared(y.pre, y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y.pre}{
  calculated response values of training set
}
  \item{y}{
  observed values of training set, a 1*m dataframe (m is the sample number of the  training set)
}
}
\details{
'squared-R' is the correlation coefficient of the model, which reprensents the interpreting ability
 of the model. It is a statistic used in the context of statistical models whose main purpose is
 either the prediction of future outcomes or the testing of hypotheses, on the basis of other related information. It provides a measure of how well observed outcomes are replicated by the
 model, as the proportion of total variation of outcomes explained by the model.
}
\value{
  \item{R2 }{
  the correlation coefficient
  }
}

\seealso{
\code{\link{lm}}
}
\examples{

u <- c(5,10,15,20,30,40,60,80,100)
lot1 <- c(118,58,42,35,27,25,23,20,18)
lot2 <- c(69,35,26,21,18,16,13,12,6)
data <- data.frame(cbind(u,lot1,lot2))
lm <- lm(u~.,data=data)
y.pre<-fitted(lm)
y<-u
Rsquared(y.pre,y)
summary(lm)$r.squared

}
\keyword{ Rsquared }
\keyword{ squared-R }
