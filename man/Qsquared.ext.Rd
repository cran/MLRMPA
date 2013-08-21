\name{Qsquared.ext}
\alias{Qsquared.ext}
\alias{squared-Q.ext}
\title{
Squared-Q of the Test Set
}
\description{
Validation the model through test set by the external squared-Q
}
\usage{
Qsquared.ext(y.pre, y, ytr)
}
\arguments{
  \item{y.pre}{
  calculated response values of test set
}
  \item{y}{
  observed values of test set, a 1*(n-m) dataframe (n-m is the sample number of test set)
}
  \item{ytr}{
  the response variable of the training set, a 1*m dataframe
}
}
\details{
The value of squared Q should be greater than or eaqual than 0.5.
}
\value{
  \item{Qsquared.ext}{
      It is a numeric value and it should be greater than 0.5 in a
  successful QSAR model.
  }
}
\references{
A. Tropsha, P. Gramatica, V. K. Gombar, \emph{QSAR Comb. Sci.} \bold{2003}, \emph{22}, 69-77
}

\seealso{
 \code{\link{Rsquared}}
}

\keyword{ squared Q }
