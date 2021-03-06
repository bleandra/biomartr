% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clean.retrieval.R
\name{clean.retrieval}
\alias{clean.retrieval}
\title{Format \code{\link{meta.retrieval}} output}
\usage{
clean.retrieval(x, gunzip = TRUE, clean.names = TRUE)
}
\arguments{
\item{x}{a vector containing file paths to the output files generated by \code{\link{meta.retrieval}}.}

\item{gunzip}{a logical value indicating whether or not files should only be renamed (\code{gunzip = FALSE}) or renamed AND unzipped (\code{gunzip}).}

\item{clean.names}{a logical value indicating whether or not file names shall be cleaned (= renamed). \code{clean.names = TRUE} (Default).}
}
\description{
Process the output of \code{\link{meta.retrieval}} by first
un-zipping downloaded files and renaming them for more convenient downstream data analysis.
}
\details{
The output of \code{\link{meta.retrieval}} usually contains compressed sequence files
and a naming convention based on the database the respective file was retrieved from (e.g. \code{Saccharomyces_cerevisiae_cds_from_genomic_refseq.fna.gz}). 
This function helps to format the \code{\link{meta.retrieval}} output files by
\itemize{
\item 1) Automatically uncompress all sequence files in the \code{meta.retrieval} output folder
\item 2) Automatically rename files from e.g. \code{Saccharomyces_cerevisiae_cds_from_genomic_refseq.fna.gz} to \code{Scerevisiae.fa}.
This allows more convenient downstream analyses and visualizations.
}
}
\examples{
\dontrun{
# The easiest way to use 'clean.retrieval()' in combination with
# 'meta.retrieval()' is to use the pipe operator from the 'magrittr' package
library(magrittr)
meta.retrieval(kingdom = "vertebrate_mammalian", 
               db = "refseq", 
               type = "genome") \%>\% clean.retrieval()
}
}
\seealso{
\code{\link{meta.retrieval}}
}
\author{
Hajk-Georg Drost
}
