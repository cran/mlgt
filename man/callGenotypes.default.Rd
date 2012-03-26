\name{callGenotypes.default}
\alias{callGenotypes.default}
\title{Default internal methods for \code{\link{callGenotypes}}}
\usage{
  callGenotypes.default(table, minTotalReads = 50,
    minDiffToVarThree = 0.4,
    minPropDiffHomHetThreshold = 0.3,
    maxPropVarThree = 0.1)
}
\arguments{
  \item{table}{The table of sequence counts as in the
  markerSampleTable of an mlgtResult object.}

  \item{minTotalReads}{Minimum number of reads before
  attempting to call genotypes}

  \item{minDiffToVarThree}{Difference between sum of counts
  of top two variants and the count of the third most
  frequent variant, expressed as proportion of total.}

  \item{minPropDiffHomHetThreshold}{Difference between
  counts of top two variants. One way to distinguish
  HOMOZYGOTES and HETEROZYGOTES.}

  \item{maxPropVarThree}{Also call as 'complexVars' if the
  third variant accounts for more than this proportion of
  used reads (default=0.1)}
}
\value{
  A data.frame identical to those in markerSampleList but
  with additional columns giving parameter values, and a
  'status' column giving the genotype status.
}
\description{
  This is the default method to call genotypes from a table
  of variant counts. Methods:- \describe{
  \item{`callGenotypes.default'}{Three sequential steps for
  each marker/sample pair: \enumerate{ \item {if the number
  of reads is less than \code{minTotalReads} the genotype
  is \emph{`tooFewReads'} } \item {if the difference
  between the sum of counts of the top two variants and the
  count of the third most variant, expressed as proportion
  of total, is less than \code{minDiffToVarThree}, OR the
  third most abundant variant accounts for more than
  maxPropVarThree (default=0.1) of the reads, then the
  genotype is \emph{`complexVars'}} \item {if the
  difference between the counts of top two variants,
  expressed as a proportion of the total, is greater than
  or equal to \code{minPropDiffHomHetThreshold}, then the
  genotype is \emph{HOMOZYGOTE}. Otherwise it is
  \emph{HETEROZYGOTE}. } } } }
}

