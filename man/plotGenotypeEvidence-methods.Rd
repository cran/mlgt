\name{plotGenotypeEvidence}
\alias{plotGenotypeEvidence}
\alias{plotGenotypeEvidence,genotypeCall,missing,character-method}
\alias{plotGenotypeEvidence,genotypeCall,missing,missing-method}
\alias{plotGenotypeEvidence,genoytpeCall,missing,character-method}
\alias{plotGenotypeEvidence,genoytpeCall,missing,missing-method}
\alias{plotGenotypeEvidence,missing,list,character-method}
\alias{plotGenotypeEvidence.genotypeCall}
\alias{plotGenotypeEvidence.genotypeCall.file}
\alias{plotGenotypeEvidence.list}
\title{Plot genotyping evidence}
\arguments{
  \item{callList}{A \code{list} of genotypes calls.}

  \item{genotypeCall}{A single table of genotype calls}

  \item{file}{The file to write to.}
}
\value{
  Creates six plots for each marker with a genotypeCall
  table. See \code{details}.
}
\description{
  Plot the distributions of values used in calling
  genotypes.
}
\details{
  Currently only makes sense with "custom" method. The
  resulting plots are \enumerate{ \item {Histogram of the
  number of sequences assigned to each sample} \item
  {Histogram of diffToVarThree parameter. Used to decide
  whether to make the call} \item {Histogram of
  propDiffHomHet parameter. Used to distinguish HOMOZYGOTES
  and HETEROZYGOTES} \item {propDiffHomHet against
  diffToVarThree } \item {diffToVarThree against number of
  sequences} \item {propDiffHomHet against number of
  sequences} }
}
\examples{
\dontrun{
data("mlgtResult", package="mlgt")
my.genoytpes <- callGenotypes(my.mlgt.Result)
plotGenotypeEvidence(genotypeCall=my.genotypes[["DPA1_E2"]])
}
}
\seealso{
  \code{\link{callGenotypes}}
}

