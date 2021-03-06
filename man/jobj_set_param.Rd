% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ml_pipeline_utils.R
\name{jobj_set_param}
\alias{jobj_set_param}
\title{Parameter Setting for JVM Objects}
\usage{
jobj_set_param(jobj, setter, value, min_version = NULL, default = NULL)
}
\arguments{
\item{jobj}{A pipeline stage jobj.}

\item{setter}{The name of the setter method as a string.}

\item{value}{The value to be set.}

\item{min_version}{The minimum required Spark version for this parameter to be valid.}

\item{default}{The default value of the parameter, to be used together with `min_version`.
An error is thrown if the user's Spark version is older than `min_version` and `value`
differs from `default`.}
}
\description{
Sets a parameter value for a pipeline stage object.
}
\keyword{internal}
