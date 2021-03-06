% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/gsea.R
\docType{methods}
\name{shorten_desc}
\alias{shorten_desc}
\alias{shorten_desc,enrichResult-method}
\alias{shorten_desc,gseaResult-method}
\title{Shorten Description names from ClusterProfiler results.}
\usage{
shorten_desc(x, max_len)

\S4method{shorten_desc}{enrichResult}(x, max_len = 50)

\S4method{shorten_desc}{gseaResult}(x, max_len = 50)
}
\arguments{
\item{x}{A enrichResult or gseaResult object.}

\item{max_len}{Maximum length of Description}
}
\value{
A enrichResult or gseaResult
}
\description{
Shorten Description names.
}
\section{Methods (by class)}{
\itemize{
\item \code{enrichResult}: Shorten description in enrichResult.

\item \code{gseaResult}: Shorten description in enrichResult.
}}

