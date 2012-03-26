\name{dumpVariants}
\alias{dumpVariants}
\title{Print sequence to file}
\usage{
  dumpVariants(mlgtResultObject,
    markers = names(mlgtResultObject@markers),
    samples = mlgtResultObject@samples,
    fileSuffix = "variantDump.fasta", uniqueOnly = FALSE)
}
\arguments{
  \item{mlgtResultObject}{an object of class
  \code{\link{mlgtResult}}}

  \item{markers}{Which markers to output}

  \item{samples}{Which samples to output}

  \item{fileSuffix}{Add a common suffix to the file names.
  Usefull for keeping track of different sets of
  sequences.}

  \item{uniqueOnly}{Only output single copy of each
  sequence. A count for each sequence are appended to the
  names.}
}
\description{
  A function to output all sequences or just unique
  sequences to a fasta file
}
\details{
  The sequence variants stored within an object of class
  \code{\link{mlgtResult}} are not very easy to extract.
  This function will output all variants or all variant for
  specific markers and samples into fasta files. Users can
  select to only output unique sequences or the full
  alignment including duplicated sequences. One file will
  be created for each marker/sample pair.
}

