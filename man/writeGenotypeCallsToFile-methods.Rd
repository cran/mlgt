\name{writeGenotypeCallsToFile}
\alias{writeGenotypeCallsToFile}
\alias{writeGenotypeCallsToFile,list,missing-method}
\alias{writeGenotypeCallsToFile,missing,genotypeCall-method}
\alias{writeGenotypeCallsToFile.list,writeGenotypeCallsToFile.genotypeCall}
\title{Write genotype calls to file}
\arguments{
  \item{callList}{A \code{list} of genotypes calls.}

  \item{genotypeCall}{Alternatively, supply a single table
  of genotype calls}

  \item{filePrefix}{A prefix to add to the start of each
  file name. Useful to distinguish sets of genotype call
  results from same run.}

  \item{file}{The file to write to. If none specified,
  function will attempt to make one. Ignored if
  \option{singleFile = TRUE}.}

  \item{singleFile}{FALSE/TRUE whether to concatenate
  results from a list of genotypeCalls}

  \item{writeParams}{List call parameter values at top of
  file? Beware using this option when \option{singleFile =
  TRUE}}

  \item{appendValue}{Used internally to concatenate
  results.}
}
\value{
  Writes tables in the current working directory.
}
\description{
  A genotype call table or a list of tables can be written
  to tab-delimited file(s).
}
\details{
  This function is quite flexible and can output a single
  table of concatenated results or a series of individual
  files. Call parameters can be included above each table
  but be careful doing this when \code{singleFile=TRUE}
}
\examples{
\dontrun{
data("mlgtResult", package="mlgt")
my.genoytpes <- callGenotypes(my.mlgt.Result)
writeGenotypeCallsToFile(my.genotypes)
}
}

