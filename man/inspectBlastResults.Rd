\name{inspectBlastResults}
\alias{inspectBlastResults}
\title{Plot BLAST statisitics for one marker}
\usage{
  inspectBlastResults(blastTable, subject)
}
\arguments{
  \item{blastTable}{The file of BLAST results.}

  \item{subject}{The name of a single marker}
}
\value{
  Plots three histograms based on the BLAST statistics
  'Alignment length', 'Bit Score' and 'Percent Identity'
}
\description{
  \code{\link{prepareMlgtRun}} produces several BLAST
  tables. It is instructive to plot the BLAST results and
  assess the performance of different markers.
}
\details{
  This function is used to plot a series of histograms
  based on BLAST statistics.
}
\seealso{
  \code{\link{printBlastResultGraphs}}
}

