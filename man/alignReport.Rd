\name{alignReport}
\alias{alignReport}
\title{Report on alignment}
\usage{
  alignReport(mlgtResultObject,
    markers = names(mlgtResultObject@markers),
    samples = mlgtResultObject@samples,
    correctThreshold = 0.01,
    consThreshold = (1 - correctThreshold),
    profPlotWidth = 60, fileName = NULL, method = "table",
    warn = TRUE)
}
\arguments{
  \item{mlgtResultObject}{an object of class
  \code{\link{mlgtResult}}}

  \item{markers}{Which markers to output}

  \item{samples}{Which samples to output}

  \item{correctThreshold}{A hypothetical level at which you
  migth correct low frequence variants. Default = 0.01.}

  \item{consThreshold}{(1- correctThreshold)}

  \item{profPlotWidth}{How many residues to plot in
  \code{profile} mode. Default=60.}

  \item{fileName}{Give a filename to export result to
  (pdf).}

  \item{method}{One of c("table", "profile", "hist").
  "hist" plot a histogram of MAF frequencies. "profile"
  plots a coloured barplot represnting the allele
  frequencies at each site.}

  \item{warn}{Issue warnings (default = TRUE)}
}
\value{
  A data frame for each marker listing site statistics.
}
\description{
  Inspect site frequency spectra for alignments.
}
\details{
  Produce different kinds of reports to assess quality of
  data for each marker/sample pair. Can be a good way to
  assess whether \code{\link{errorCorrect}} should be
  applied.
}
\examples{
\dontrun{
data("mlgtResult", package="mlgt")
alignReport(my.mlgt.Result,markers="DPA1_E2", samples="MID-22", method="profile")
alignReport(my.mlgt.Result,markers="DPA1_E2", samples="MID-22", method="hist")
}
}
\seealso{
  \code{\link{errorCorrect}}
}

