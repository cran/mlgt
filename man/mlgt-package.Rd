\docType{package}
\name{mlgt-package}
\alias{mlgt-package}
\title{mlgt: Multi-locus geno-typing}
\description{
  \tabular{ll}{ Package: \tab mlgt\cr Type: \tab Package\cr
  Version: \tab 0.16\cr Date: \tab 2012-03-27\cr Author:
  \tab Dave T. Gerrard <david.gerrard@manchester.ac.uk>\cr
  License: \tab GPL (>= 2)\cr LazyLoad: \tab yes\cr }
}
\details{
  mlgt sorts a batch of sequence by barcode and identity to
  templates. It makes use of external applications BLAST
  and MUSCLE. Genotypes are called and alleles can be
  compared to a reference list of sequences. More
  information about each function can be found in its help
  documentation.

  Some text

  The main functions are: \code{\link{prepareMlgtRun}},
  \code{\link{mlgt}}, \code{\link{callGenotypes}},
  \code{\link{createKnownAlleleList}},

  ...
}
\references{
  BLAST - Altschul, S. F., W. Gish, W. Miller, E. W. Myers,
  and D. J. Lipman (1990). Basic local alignment search
  tool. Journal of molecular biology 215 (3), 403-410.

  MUSCLE - Robert C. Edgar (2004) MUSCLE: multiple sequence
  alignment with high accuracy and high throughput. Nucleic
  Acids Research 32(5), 1792-97.

  IMGT/HLA database - Robinson J, Mistry K, McWilliam H,
  Lopez R, Parham P, Marsh SGE (2011) The IMGT/HLA
  Database. Nucleic Acids Research 39 Suppl 1:D1171-6
}

