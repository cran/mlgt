\name{dumpVariantMap.mlgtResult}
\alias{dumpVariantMap.mlgtResult}
\title{Dump variants as fasta}
\usage{
  dumpVariantMap.mlgtResult(resultObject,
    markers = names(resultObject@markers),
    file = paste(resultObject@projectName, resultObject@runName, "seqDump", sep = "."),
    singleFile = TRUE)
}
\arguments{
  \item{resultObject}{An object of class
  \code{\link{mlgtResult}} containing the sequence
  variants.}

  \item{markers}{For which markers do you want to output
  sequences.}

  \item{file}{An output file name. If not supplied, one is
  created.}

  \item{singleFile}{Whether to output results for all
  markers to a single file or to one file per marker.}
}
\value{
  Writes fasta files in the current directory.
}
\description{
  Output unique variants to one or more fasta files.
}
\details{
  This is a stop-gap function while I decide how best to
  handle output of full sequences.
}

