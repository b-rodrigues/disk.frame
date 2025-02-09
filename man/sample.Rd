% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sample_frac.R
\name{sample_frac.disk.frame}
\alias{sample_frac.disk.frame}
\title{Sample n rows from a disk.frame}
\usage{
\method{sample_frac}{disk.frame}(tbl, size = 1, replace = FALSE,
  weight = NULL, .env = NULL, ...)
}
\arguments{
\item{tbl}{a disk.frame}

\item{size}{the proportion/fraction of rows to sample}

\item{replace}{TRUE to sample with replacement; FALSE to sample without replacement}

\item{weight}{weight of each row. NOT implemented}

\item{.env}{for compatibility}

\item{...}{passed to dplyr}
}
\description{
Sample n rows from a disk.frame
}
\examples{
cars.df = as.disk.frame(cars)

collect(sample_frac(cars.df, 0.5))

# clean up cars.df
delete(cars.df)
}
