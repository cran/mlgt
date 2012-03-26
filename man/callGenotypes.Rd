\docType{methods}
\name{callGenotypes}
\alias{callGenotypes}
\alias{callGenotypes.mlgtResult}
\title{Make genotype calls}
\usage{
  callGenotypes(resultObject,
    method = "callGenotypes.default",
    markerList = names(resultObject@markers),
    sampleList = resultObject@samples, mapAlleles = FALSE,
    alleleDb = NULL, approxMatching = FALSE, ...)
}
\arguments{
  \item{resultObject}{An object of class
  \code{\link{mlgtResult}}, as returned by
  \code{\link{mlgt}}}

  \item{alleleDb}{A list of \code{\link{variantMap}}
  objects derived from known alleles. As made by
  \code{\link{createKnownAlleleList}}}

  \item{method}{How to call genotypes. Currently only
  "callGenotypes.default" is implemented. Users can define
  their own methods as R functions (see the vignette).}

  \item{markerList}{For which of the markers do you want to
  call genotypes (default is all)?}

  \item{sampleList}{For which of the samples do you want to
  call genotypes (default is all)?}

  \item{mapAlleles}{FALSE/TRUE. Whether to map variants to
  db \option{alleleDb} of known alleles.}

  \item{approxMatching}{If TRUE, a BLAST search is also
  performed to find matches (slower). Additional columns
  are added to the genoytpeTable}

  \item{...}{Other parameter values will be passed to
  custom methods such as
  \code{\link{callGenotypes.default}}}
}
\value{
  list of call results including the call parameters and a
  table of calls (class \code{\link{genotypeCall}}). If an
  mlgtResult object was supplied then a list of
  \code{\link{genotypeCall}} objects will be returned, each
  named by marker.
}
\description{
  Apply a genotype call method to a table or list of tables
  of variant data such as the \code{markerSampleList} table
  of an \code{\link{mlgtResult}}.
}
\details{
  After \code{\link{mlgt}} has generated tables of the most
  common variants assigned in each marker/sample pair, an
  attempt can be made to call genotypes. This is kept
  separate because users might want to try different
  calling methods and have the option to map to a known set
  of alleles. Currently, only one method is implemented
  (\emph{`custom'}). See
  \code{\link{callGenotypes.default}}. This function also
  includes the option to map variants to a list of known
  alleles created using
  \code{\link{createKnownAlleleList}}. The basic method
  makes only perfect matches but a secondary method can be
  triggered (approxMatching=TRUE) to find the allele with
  the greatest similarity using a local BLAST search.
}
\examples{
\dontrun{
data("mlgtResult", package="mlgt")
my.mlgt.Result
# the default method
my.genoytpes <- callGenotypes(my.mlgt.Result)
# using a custom method
callGenotypes.custom <- function(table, maxPropUniqueVars=0.5) {
	table$status <- "notCalled"
	table$propUniqueVars <- table$numbVar/table$numbSeq
	table$status <- ifelse(table$propUniqueVars <= maxPropUniqueVars,"good", "bad")
	return(table)
}
my.custom.Genotypes <- callGenotypes(my.mlgt.Result, method="callGenotypes.custom")
}
}

