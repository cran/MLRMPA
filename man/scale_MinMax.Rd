\name{scale_MinMax}
\alias{scale_MinMax}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Min-Max Normalization
}
\description{
The function is used to linearly map the specified matrix into a new interval from 0 to 1 on each column of the matrix.
}
\usage{
scale_MinMax(x)
}
\arguments{
  \item{x}{
  a dataframe
}
}
\details{
The Max-Min linear normalization is a process that changes the range of dataset into 0-1. 
}
\value{
  \item{x_scale}{
  the Max-Min normalized matrix
  }
}

\examples{
ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
trt <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
weight <- cbind(ctl, trt)
print(weight)
weight_scale<-scale_MinMax(weight)
print(weight_scale)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ documentation }
\keyword{ utilities }

