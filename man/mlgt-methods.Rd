\docType{methods}
\name{mlgt}
\alias{mlgt}
\alias{mlgt,mlgtDesign-method}
\alias{mlgt.mlgtDesign}
\title{Get variants for all markers/samples}
\usage{
  mlgt(designObject, maxVarsToAlign = 30,
    minTotalCount = 500, errorCorrect = FALSE,
    correctThreshold = 0.01, minLength = 70)
}
\arguments{
  \item{designObject}{an object of class
  \code{\link{mlgtDesign}}}

  \item{minTotalCount}{How many assigned sequences to allow
  before limiting the number of raw variants to allign.}

  \item{maxVarsToAlign}{If total assigned sequences exceeds
  'minTotalCount', then only the 'maxVarsToAlign' most
  abundant variants are used.}

  \item{errorCorrect}{Use error correection on alignment of
  raw variants}

  \item{correctThreshold}{Maximum proportion of raw reads
  at which (minor allele) bases and gaps are corrected.}

  \item{minLength}{Reads below this length are excluded
  (they are very likely to be primer-dimers).}
}
\value{
  an object of class \code{\link{mlgtResult}} containing
  all variants and their counts, a summary table (all
  markers) and one summary table per marker.
}
\description{
  \code{mlgt} Works through all pairs of markers and
  samples. Aligns variants and trims aligned variants to
  the marker sequence. Potential 'alleles' are assigned
  from the most common variants within each sample.
}
\details{
  Depends upon \code{\link{prepareMlgtRun}} having been run
  in the current directory to generate
  \option{designObject} of class \code{\link{mlgtDesign}}.
  The basic process for each marker/sample pair is to align
  all unique variants using MUSCLE and then extract the
  alignment portion aligned to the reference marker
  sequence, ignoring the rest. The marker alignment is
  critical and \code{\link{mlgt}} has several options to
  optimise this alignment. If the total number of reads is
  less than minTotalCount, then all variants are aligned.
  Otherwise, only the most abundant 30 unique variants are
  aligned. Optionally, alignments are `error-correted' as
  per the separate function \code{\link{errorCorrect}}.
  Reads shorter than 'minLength' are filtered out.
}
\seealso{
  \code{\link{prepareMlgtRun}}
}

