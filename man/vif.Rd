\name{vif}
\alias{vif}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Variance Inflation Factor
}
\description{
VIF is to analysis the multicollinearity of the descriptors in feature set. 
}
\usage{
vif(y, x, lm)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
 \item{y}{
  the activity values
}
  \item{x}{
 the descriptors dataset
}
  \item{lm}{
  a linear model between x and y
}
}
\details{
The VIF of features below 5.0 is acceptable.
}
\value{
  \item{VIF.value}{
  a dataframe contains VIF values for each feature }
}
\references{
M. Goodarzi, S. Deshpande, V. Murugesan, S. B. Katti, Y. S. Prabhakar, \emph{QSAR Comb. Sci.} \bold{2009}, \emph{28}, 1487-1499.
}

\seealso{
  \code{\link{lm}}
  \code{\link{lmcv}}
}
\examples{
u <- c(5,10,15,20,30,40,60,80,100)
lot1 <- c(118,58,42,35,27,25,23,20,18)
lot2 <- c(69,35,26,21,18,16,13,12,6)
data <- data.frame(cbind(u,lot1,lot2))
lm <- lm(u~.,data=data)
y<-lm$model[,1]
x<-lm$model[,-1]
VIF<-vif(y,x,lm)
print(VIF)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ documentation }
\keyword{ utilities }
