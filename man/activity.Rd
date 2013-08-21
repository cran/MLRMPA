\name{activity}
\alias{activity}
\docType{data}
\title{
Setschenow Contants of 101 Organic Compounds
}
\description{
The data used here refer to the Setschenow contants of 101 Organic Compounds.
}
\usage{data(activity)}
\format{
  \describe{
    \item{\code{activity}}{a numeric vector}
  }
}
\details{
 The experimental data for 101 compounds in aqueous NaCl solution were the same as the article by Ni and Yalkowsky.
}
\source{
N. Ni, S. H. Yalkowsky, \emph{Int. J. Pharma.} \bold{2003}, \emph{254}, 167-172.

}
\references{
J. Xu, L. Wang, X. Shen, W. Xu, \emph{J. Comp. Chem.} \bold{2011}, \emph{32}, 3241-52.
}
\examples{
data(activity)
class(activity)
head(activity)
}
