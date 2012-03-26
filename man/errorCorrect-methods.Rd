\name{errorCorrect}
\alias{errorCorrect}
\alias{errorCorrect,missing,list-method}
\alias{errorCorrect,mlgtResult,missing-method}
\title{Alignment error correction}
\arguments{
  \item{mlgtResultObject}{An object of class
  \code{\link{mlgtResult}}}

  \item{correctThreshold}{The maximimum Minor Allele
  Frequency (MAF) at which variants will be corrected.}
}
\value{
  A new \code{\link{mlgtResult}} object with errors
  'corrected'
}
\description{
  Correct very low frequency site variants.
}
\details{
  You may want to alter some of the sequences if you
  believe that sequences at very low frequency (within the
  set of sequences from a marker/sample pair) represent
  sequencing errors. \code{errorCorrect()} is implemented
  as an additional step after running \code{\link{mlgt}},
  however, it is recommended to include error correction
  within \code{\link{mlgt}} using the errorCorrect=TRUE
  option. Using \code{\link{alignReport}} beforehand may
  help you decide whether to do this.
}
\seealso{
  \code{\link{alignReport}}
}

