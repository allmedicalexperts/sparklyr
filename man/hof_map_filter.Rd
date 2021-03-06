% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dplyr_hof.R
\name{hof_map_filter}
\alias{hof_map_filter}
\title{Filters a map}
\usage{
hof_map_filter(x, func, expr = NULL, dest_col = NULL, ...)
}
\arguments{
\item{x}{The Spark data frame to be processed}

\item{func}{The filter function to apply (it should take (key, value) as arguments
and return a boolean value, with FALSE indicating the key-value pair should be discarded
and TRUE otherwise)}

\item{expr}{The map being filtered, could be any SQL expression evaluating to a map
(default: the last column of the Spark data frame)}

\item{dest_col}{Column to store the filtered result (default: expr)}

\item{...}{Additional params to dplyr::mutate}
}
\description{
Filters entries in a map using the function specified
(this is essentially a dplyr wrapper to the `map_filter(expr, func)` higher-
order function, which is supported since Spark 3.0)
}
\examples{
\dontrun{

library(sparklyr)
sc <- spark_connect(master = "local", version = "3.0.0")
sdf <- sdf_len(sc, 1) \%>\% dplyr::mutate(m = map(1, 0, 2, 2, 3, -1))
filtered_sdf <- sdf \%>\% hof_map_filter(~ .x > .y)
}

}
