\name{combineMlgtResults}
\alias{combineMlgtResults}
\title{Combine two or more mlgtResult objects}
\usage{
  combineMlgtResults(resultList,
    projectName = resultList[[1]]@projectName,
    runName = "combinedMlgtResults")
}
\arguments{
  \item{resultList}{A list of objects of class
  \code{\link{mlgtResult}}}

  \item{projectName}{Do you want to provide your own
  projectName}

  \item{runName}{Do you want to provide your own runName}
}
\value{
  An object of class \code{\link{mlgtResult}}
}
\description{
  Combine results from one or more runs, or combine partial
  results after a parallel job.
}
\details{
  In some cases, you may want to combine multiple
  \code{\link{mlgtResult}} objects into a single object.
  Can combine results using the same markers as long as the
  samples used have different names between results. Can
  combine results using different sets (subsets) of
  markers. Will fail if the same marker/sample combination
  appears in more than one \code{\link{mlgtResult}}. Can be
  used to recombine the list of result obtained by running
  \code{\link{mlgt}} in parallel on subsets of the full
  marker list.
}

