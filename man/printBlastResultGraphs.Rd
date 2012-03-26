\name{printBlastResultGraphs}
\alias{printBlastResultGraphs}
\title{Plot BLAST statistics for several markers to file}
\usage{
  printBlastResultGraphs(designObject,
    markerList = designObject@markers,
    fileName = "blastResultGraphs.pdf")
}
\arguments{
  \item{designObject}{An object of class
  \code{\link{mlgtDesign}} which will contain the name of
  the blast results file
  \code{designObject@markerBlastResults}}

  \item{markerList}{Which markers to output. Defaults to
  \code{designObject@markers}}

  \item{fileName}{Defaults to "blastResultGraphs.pdf"}
}
\value{
  Plots BLAST results to a pdf file.
}
\description{
  Plot the BLAST statistics easily for all markers of an
  \code{\link{mlgtResult}} object.
}
\seealso{
  \code{\link{inspectBlastResults}}
}

