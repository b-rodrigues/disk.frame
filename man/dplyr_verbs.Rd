% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dplyr_verbs.r
\name{select.disk.frame}
\alias{select.disk.frame}
\alias{rename.disk.frame}
\alias{filter.disk.frame}
\alias{filter_all.disk.frame}
\alias{filter_if.disk.frame}
\alias{filter_at.disk.frame}
\alias{mutate.disk.frame}
\alias{transmute.disk.frame}
\alias{arrange.disk.frame}
\alias{summarise.disk.frame}
\alias{tally.disk.frame}
\alias{count.disk.frame}
\alias{add_count.disk.frame}
\alias{add_tally.disk.frame}
\alias{summarize.disk.frame}
\alias{do.disk.frame}
\alias{group_by_all.disk.frame}
\alias{group_by_at.disk.frame}
\alias{group_by_if.disk.frame}
\alias{mutate_all.disk.frame}
\alias{mutate_at.disk.frame}
\alias{mutate_if.disk.frame}
\alias{rename_all.disk.frame}
\alias{rename_at.disk.frame}
\alias{rename_if.disk.frame}
\alias{select_all.disk.frame}
\alias{select_at.disk.frame}
\alias{select_if.disk.frame}
\alias{summarise_all.disk.frame}
\alias{summarise_at.disk.frame}
\alias{summarize_all.disk.frame}
\alias{summarize_at.disk.frame}
\alias{summarize_if.disk.frame}
\alias{glimpse.disk.frame}
\title{The dplyr verbs implemented for disk.frame}
\usage{
\method{select}{disk.frame}(.data, ...)

\method{rename}{disk.frame}(.data, ...)

\method{filter}{disk.frame}(.data, ...)

filter_all.disk.frame(.data, ...)

filter_if.disk.frame(.data, ...)

filter_at.disk.frame(.data, ...)

\method{mutate}{disk.frame}(.data, ...)

\method{transmute}{disk.frame}(.data, ...)

\method{arrange}{disk.frame}(.data, ...)

\method{summarise}{disk.frame}(.data, ...)

tally.disk.frame(.data, ...)

count.disk.frame(.data, ...)

add_count.disk.frame(.data, ...)

add_tally.disk.frame(.data, ...)

\method{summarize}{disk.frame}(.data, ...)

\method{do}{disk.frame}(.data, ...)

group_by_all.disk.frame(.data, ...)

group_by_at.disk.frame(.data, ...)

group_by_if.disk.frame(.data, ...)

mutate_all.disk.frame(.data, ...)

mutate_at.disk.frame(.data, ...)

mutate_if.disk.frame(.data, ...)

rename_all.disk.frame(.data, ...)

rename_at.disk.frame(.data, ...)

rename_if.disk.frame(.data, ...)

select_all.disk.frame(.data, ...)

select_at.disk.frame(.data, ...)

select_if.disk.frame(.data, ...)

summarise_all.disk.frame(.data, ...)

summarise_at.disk.frame(.data, ...)

\method{summarize}{disk.frame}(.data, ...)

summarize_all.disk.frame(.data, ...)

summarize_at.disk.frame(.data, ...)

summarize_if.disk.frame(.data, ...)

\method{glimpse}{disk.frame}(.data, ...)
}
\arguments{
\item{.data}{a disk.frame}

\item{...}{Same as the dplyr functions}
}
\description{
Please see the dplyr document for their usage. Please note that `group_by`
and `arrange` performs the actions within each chunk
}
\examples{
library(dplyr)
library(magrittr)
cars.df = as.disk.frame(cars)
mult = 2

# use all any of the supported dplyr
cars2 = cars.df \%>\% 
  select(speed) \%>\% 
  mutate(speed2 = speed * mult) \%>\% 
  filter(speed < 50) \%>\% 
  rename(speed1 = speed) \%>\% 
  collect

# clean up cars.df
delete(cars.df)
}
\seealso{
Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}

Other dplyr verbs: \code{\link{group_by.disk.frame}}
}
\concept{dplyr verbs}
