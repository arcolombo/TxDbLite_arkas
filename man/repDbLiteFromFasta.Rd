% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/repDbLiteFromFasta.R
\name{repDbLiteFromFasta}
\alias{repDbLiteFromFasta}
\title{functions to create a RepDbLite object (a stripped-down SQLite db) from
a specified RepBase FASTA file for a given version, species, and type(s). this will use biotype catalog designed for human species, but can possibly be used for mouse, though not recommended.}
\usage{
repDbLiteFromFasta(fastaFile, verbose = TRUE, dryRun = FALSE)
}
\arguments{
\item{fastaFile}{the FASTA file to collate into a RepDbLite instance}

\item{verbose}{make a lot of noise? (TRUE)}

\item{dryRun}{boolean if false a sql database is created}
}
\description{
functions to create a RepDbLite object (a stripped-down SQLite db) from
a specified RepBase FASTA file for a given version, species, and type(s). this will use biotype catalog designed for human species, but can possibly be used for mouse, though not recommended.
}
