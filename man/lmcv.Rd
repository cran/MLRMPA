\name{lmcv}
\alias{lmcv}
\title{
LOOCV
}
\description{
The Leave-One-Out (LOO) and Leave-Group-Out (LGO) Cross-Validation for Multiple Linear Regression.
}
\usage{
lmcv(obj, ng = NULL, random = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{
  obj: the model of MLR
}
  \item{ng}{
  ng: number of group, if missing, do LOO
}
  \item{random}{
  random: logical, if TRUE, do random CV
}
}
\details{
The predictive ability of the developed model can be illustrated using leave-one-out (LOO) and leave-group-out (LGO) cross-validation procedures.
}
\value{
  \item{q.squared }{
  cross-validation relation coefficient
  }
  \item{SDEP }{
  standard deviation of error of predictions
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
LOOCV<-lmcv(lm)
LGOCV<-lmcv(lm,5)
print(LOOCV)
print(LGOCV)

}
\keyword{ LOOCV }
\keyword{ LGOCV }
