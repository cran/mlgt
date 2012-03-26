\docType{methods}
\name{createKnownAlleleList}
\alias{createKnownAlleleList}
\title{Create \code{\link{variantMap}} object from allele alignment}
\usage{
  createKnownAlleleList(markerName, markerSeq,
    alignedAlleleFile, alignFormat = "msf",
    sourceName = alignedAlleleFile, userAlignment = FALSE)
}
\arguments{
  \item{markerName}{A specific marker name}

  \item{markerSeq}{something}

  \item{alignedAlleleFile}{a sequence alignment}

  \item{alignFormat}{the format of alignedAlleleFile. "msf"
  (the default) or "fasta"}

  \item{sourceName}{A character string to record the source
  of the alignment. Defaults to the value of
  alignedAlleleFile}

  \item{userAlignment}{The specified 'alignedAlleleFile'
  already includes the marker sequence. Default = FALSE.}
}
\value{
  a \code{\link{variantMap}} object named by markerName
}
\description{
  Create a \code{\link{variantMap}} object to store known
  alleles for a marker
}
\details{
  To compare variants produced using \code{\link{mlgt}} the
  sequences of the known alleles must be aligned to the
  same marker used to find the variants. The resulting
  sub-sequence alignment may have identical sequences for
  different alleles. If that happens, those alleles are
  condensed into one and their names concatenated. User can
  supply files with marker sequences pre-aligned to the
  reference alleles.
}

