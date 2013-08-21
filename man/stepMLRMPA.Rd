\name{stepMLRMPA}
\alias{stepMLRMPA}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Multiple Linear Regression Model Population Analysis
}
\description{
Following the variance and correletion selection, the function stepMLRMPA is to perform the clustering procedures, random sampling, building a model, validation the model and printing the model and statistic parameters to the specified files.
}
\usage{
stepMLRMPA(tree, Clusters, N, op1, op2,tr.tst)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
 \item{tree}{
  a hierarchical tree of variables resulting from hclustvar into several clusters by specifying the desired number of clusters
}
  \item{Clusters}{
  an integer scalar with the desired number of clusters
}
  \item{N}{
  an integer scalar with the desired number of sampling and modeling times
}
  \item{op1}{
  a txt file used for save the statistical parameters
}
  \item{op2}{
  a txt file used for save the model
}
  \item{tr.tst}{
  a list calculated by VarCor function
}
}
\details{
The specific procedure can be seen in the figure 1. 
}
\value{
  \item{Clusterth_size }{
       the number of variables in each cluster}
}
\references{
M.Chavent, V. Kuentz, B.Liquet, L. Saracco, \emph{J. Stat. Softw.} \bold{2012}, \emph{50}, 1-16.
}
\author{
Xiaoyun Zhang, Meihong Xie
}

\seealso{
  \code{\link{hclustvar}}
  \code{\link{VarCor}}
}
\examples{
##  'var.lower' and 'var.upper' are the variance selection range 
var.lower<-0.05
var.upper<-0.07

##  'xy.cor' is the correlation selection range
xy.cor<-0.3

## 'tst' is the number of test set
tst<-c(72:101)
data(activity)
data(descriptor)
data(deleted_descriptor)
tr.tst<-VarCor(tst,activity,descriptor,deleted_descriptor,var.lower,var.upper,xy.cor)

## the variance distribution of the original dataset
plotvar(tr.tst[[3]],tr.tst[[1]])

## the variance distribution of the dataset with variance and correlation selection
plotvar(tr.tst[[4]],tr.tst[[1]])

## the correlation distribution of the original dataset
plotcor(tr.tst[[4]],tr.tst[[1]])

## the correlation distribution of the dataset with variance and correlation selection
plotcor(tr.tst[[4]],tr.tst[[1]])

xtr<-as.data.frame(tr.tst[[4]])
ytr<-as.data.frame(tr.tst[[1]])
xtst<-as.data.frame(tr.tst[[5]])
ytst<-as.data.frame(tr.tst[[2]])

## variables clustering
tree<-hclustvar(xtr)

Clusterth.SIze2<-stepMLRMPA(tree,2,5,op1="statistic_parameters02.txt",op2="model02.txt",tr.tst)
Clusterth.SIze3<-stepMLRMPA(tree,3,5,op1="statistic_parameters03.txt",op2="model03.txt",tr.tst)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ MLR }
\keyword{ MPA }
\keyword{ MLRMPA }
