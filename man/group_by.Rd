% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dplyr_verbs.r
\name{group_by.disk.frame}
\alias{group_by.disk.frame}
\title{Group by within each disk.frame}
\usage{
\method{group_by}{disk.frame}(.data, ...)
}
\arguments{
\item{.data}{a disk.frame}

\item{...}{same as the dplyr::group_by}
}
\description{
The disk.frame group by operation perform group WITHIN each chunk. This is
often used for performance reasons. If the user wishes to perform group-by,
they may choose to use the `hard_group_by` function which is expensive as it
reorganizes the chunks by the shard key.
}
\seealso{
hard_group_by

Other dplyr verbs: \code{\link{select.disk.frame}}
}
\concept{dplyr verbs}
