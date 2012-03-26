\name{getSubSeqsTable}
\alias{getSubSeqsTable}
\title{Align and trim sequences for marker/sample pair}
\usage{
  getSubSeqsTable(thisMarker, thisSample, sampleMap,
    fMarkerMap, rMarkerMap, markerSeq, maxVarsToAlign = 30,
    minTotalCount = 500, errorCorrect = FALSE,
    correctThreshold = 0.01, minLength = 70)
}
\arguments{
  \item{thisMarker}{A specific marker name}

  \item{thisSample}{A specific sample name}

  \item{sampleMap}{A list of sequence IDs assigned to each
  marker. Each element named by marker name.}

  \item{fMarkerMap}{A list of sequence IDs assigned to each
  sample using BLAST hits in forward orientation. Each
  element named by sample name.}

  \item{rMarkerMap}{A list of sequence IDs assigned to each
  sample using BLAST hits in reverse orientation. Each
  element named by sample name.}

  \item{markerSeq}{The sequence of \option{thisMarker}}

  \item{maxVarsToAlign}{If total assigned sequences exceeds
  'minTotalCount', then only the 'maxVarsToAlign' most
  abundant variants are used.}

  \item{minTotalCount}{How many assigned sequences to allow
  before limiting the number of raw variants to allign.}

  \item{errorCorrect}{Use error correection on alignment of
  raw variants}

  \item{correctThreshold}{Maximum proportion of raw reads
  at which (minor allele) bases and gaps are corrected.}

  \item{minLength}{Reads below this length are excluded
  (they are very likely to be primer-dimers).}
}
\value{
  A table of unique variants and their counts. The
  sequences have been trimmed to the portion aligned with
  \option{markerSeq}
}
\description{
  A list of sequences mapped to both \option{thisMarker}
  and \option{thisSample} is created and these sequences
  are aligned to \option{markerSeq}.
}
\details{
  This internal function is called by \code{\link{mlgt}}
}

