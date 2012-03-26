\name{mlgtDesign}
\alias{mlgtDesign}
\title{An S4 class that holds information about an mlgt analysis.}
\description{
  Returned by \code{\link{prepareMlgtRun}}. Used as sole
  input for \code{\link{mlgt}}
}
\details{
  \describe{ \item{projectName}{In which project does this
  run belong} \item{runName}{Which run was this. An
  identifier for the sequnece run} \item{markers}{A
  \emph{list} of named sequences.} \item{samples}{A vector
  of sample names} \item{fTags}{A vector of named sequence
  of MIDs used to barcode samples at the 5' end.}
  \item{rTags}{A vector of named sequence of MIDs used to
  barcode samples at the 3' end.} \item{inputFastaFile}{The
  name of the file containing sequences. Currently only
  fasta format is supported. It is up to you to pre-filter
  the sequences.} }
}
\seealso{
  \code{\link{prepareMlgtRun}}, \code{\link{mlgt}}
}

