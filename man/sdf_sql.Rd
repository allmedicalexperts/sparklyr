% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sdf_sql.R
\name{sdf_sql}
\alias{sdf_sql}
\title{Spark DataFrame from SQL}
\usage{
sdf_sql(sc, sql)
}
\arguments{
\item{sc}{A \code{spark_connection}.}

\item{sql}{a 'SQL' query used to generate a Spark DataFrame.}
}
\description{
Defines a Spark DataFrame from a SQL query, useful to create Spark DataFrames
without collecting the results immediately.
}
