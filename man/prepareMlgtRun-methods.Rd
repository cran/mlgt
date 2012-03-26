\name{prepareMlgtRun}
\alias{prepareMlgtRun}
\alias{prepareMlgtRun,missing,character,character,character,list,list,list,character,character-method}
\alias{prepareMlgtRun,mlgtDesign,missing,missing,missing,missing,missing,missing,missing,character-method}
\alias{prepareMlgtRun.listDesign,prepareMlgtRun.mlgtDesign}
\title{Prepare to run mlgt}
\usage{
  prepareMlgtRun(designObject, projectName, runName,
    samples, markers, fTags, rTags, inputFastaFile,
    overwrite)
}
\arguments{
  \item{designObject}{Only used internally.}

  \item{projectName}{In which project does this run belong}

  \item{runName}{Which run was this. An identifier for the
  sequnece run}

  \item{markers}{A \emph{list} of named sequences.}

  \item{samples}{A vector of sample names}

  \item{fTags}{A vector of named sequence of MIDs used to
  barcode samples at the 5' end.}

  \item{rTags}{A vector of named sequence of MIDs used to
  barcode samples at the 3' end.}

  \item{inputFastaFile}{The name of the file containing
  sequences. Currently only fasta format is supported. It
  is up to you to pre-filter the sequences.}

  \item{overwrite}{Should files in the current directory be
  overwritten? c("prompt", "yes", "no")}
}
\value{
  An object of class \code{\link{mlgtDesign}} is returned.
  Also, several BLAST dbs and sets of BLAST results are
  created in the working directory.  These are essential
  for \code{\link{mlgt}} to run.
}
\description{
  Required before \code{\link{mlgt}} is used. Create BLAST
  databases and assign sequences using BLAST.
}
\details{
  This important function stores all the information about
  the analysis run AND populates the working directory with
  multiple local Blast databases, which are later required
  by \code{\link{mlgt}}. Once \code{prepareMlgtRun} has
  been run, \code{\link{mlgt}} can be run aswell as
  \code{\link{printBlastResultGraphs}} and
  \code{\link{inspectBlastResults}}.
}
\seealso{
  \code{\link{printBlastResultGraphs}} and
  \code{\link{inspectBlastResults}} can only be run AFTER
  \code{prepareMlgtRun}.
}

