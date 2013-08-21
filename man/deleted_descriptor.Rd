\name{deleted_descriptor}
\alias{deleted_descriptor}
\docType{data}
\title{
The Name of Non-information Descriptors
}
\description{
The dataframe contains the name of non-information and redundant descriptors.
}
\usage{data(deleted_descriptor)}
\details{
The deleted descriptors contains that (a) as long as there is one compound are not available, (b) have a small variation in magnitude for all compounds, (c) have a Fisher F-criterion less than one unit, (d) t-criterion less than that defined (by default 0.1),etc. This procedure is aim to delete the insignificant variables.
}

\examples{
data(deleted_descriptor)
}

