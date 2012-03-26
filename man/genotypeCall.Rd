\name{genotypeCall}
\alias{genotypeCall}
\title{Results from \code{\link{callGenotypes}}}
\description{
  An S4 class containing a table and parameter values
  returned by \code{\link{callGenotypes}}
}
\details{
  \describe{ \item{projectName}{In which project does this
  run belong} \item{runName}{Which run was this. An
  identifier for the sequence run} \item{marker}{Which
  marker was this.} \item{genotypeTable}{A data frame with
  variant counts, statistics, genotype calls and,
  optionally, allele names.} \item{callMethod}{Which method
  was used to call genotypes} \item{callParameters}{a named
  list containing parameter values used in the call}
  \item{mappedToAlleles}{TRUE/FALSE whether an attempt was
  made to map the variants to a db on known alleles.}
  \item{alleleDbName}{A list of objects of class
  \code{\link{variantMap}}. Contains all variants returned
  by \code{\link{mlgt}}} }
}
\seealso{
  \code{\link{callGenotypes}},
  \code{\link{writeGenotypeCallsToFile}}
}

