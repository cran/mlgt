\name{mlgtResult}
\alias{mlgtResult}
\title{An S4 class to hold results from \code{\link{mlgt}}}
\description{
  Extends \code{\link{mlgtDesign}}
}
\details{
  \describe{ \item{projectName}{In which project does this
  run belong} \item{runName}{Which run was this. An
  identifier for the sequnece run} \item{markers}{A
  \emph{list} of named sequences.} \item{samples}{A vector
  of sample names} \item{fTags}{A vector of named sequence
  of MIDs used to barcode samples at the 5' end.}
  \item{rTags}{A vector of named sequence of MIDs used to
  barcode samples at the 3' end. May be same as
  \code{fTags}} \item{inputFastaFile}{The name of the file
  containing sequences. Currently only fasta format is
  supported. It is up to you to pre-filter the sequences.}
  \item{runSummaryTable}{A summary table with one row per
  marker} \item{alleleDb}{A list of objects of class
  \code{\link{variantMap}}. Contains all variants returned
  by \code{\link{mlgt}}} \item{markerSampleList}{A list of
  tables, one table per marker giving results for each
  sample/MID} }
}
\seealso{
  \code{\link{mlgtDesign}}, \code{\link{prepareMlgtRun}},
  \code{\link{mlgt}}
}

