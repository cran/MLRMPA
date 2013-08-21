\name{VarCor}
\alias{VarCor}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
VarCor Selection and Dataset Partition
}
\description{
Firstly, select the eligible variales according to the values of var.lower and var.upper.
Secondly, divide activity as well as corresponding descriptor into training set and test set with personal setting.
}
\usage{
VarCor(tst, activity, descriptor, deleted_descriptor, var.lower, var.upper, xy.cor)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tst}{
  a numeric vector of the serial number of test set
}
  \item{activity}{
  a 1*n dataframe of activity (n is the number of samples)
}
  \item{descriptor}{
  a n*P dataframe of corresponding descriptors (n is the number of samples, P is the number of descriptors)
}
  \item{deleted_descriptor}{
  a 1*M dataframe of needed to delete descriptors which contains insignificant and noisy variables (M is the number of deleted descriptors)
}
  \item{var.lower}{
  a numeric in the varance selection as the lower limit value}
  \item{var.upper}{
  a numeric in the varance selection as the upper limit value}
  \item{xy.cor}{
  a numeric in the correlation selection }
}
\value{
  \item{expr.tr}{
  a dataframe with the experimental data of training set}
  \item{expr.tst}{
  a dataframe with the experimental data of test set}
  \item{dscrp.all}{
  a dataframe with the descriptors both of training set and test set}
  \item{dscrp.tr}{
  a dataframe with the descriptors of training set}
  \item{dscrp.tst}{
  a dataframe with the descriptors of test set}
  \item{VarCordim}{
  the dim of variance selection and correlation selection}
}

\keyword{documentation}
\keyword{utilities}

