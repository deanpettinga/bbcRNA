% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/edger_methods.R
\docType{methods}
\name{findDEGs}
\alias{findDEGs}
\alias{findDEGs,DGEList-method}
\alias{findDEGs,BbcSE-method}
\title{Identify DE genes.}
\usage{
findDEGs(x, ...)

\S4method{findDEGs}{DGEList}(x, test, design, contrasts, coefs,
  sample_meta, lfc = log2(2))

\S4method{findDEGs}{BbcSE}(x, de_pkg = "edger", test = "glmQLFTest",
  design, contrasts = NULL, coefs = NULL, lfc = log2(2))
}
\arguments{
\item{x}{A BbcSE object or a DGEList or a DESeqDataSet.}

\item{...}{Not used currently.}

\item{test}{For de_pkg="edger", either "glmQLFTest" or "glmTreat"}

\item{design}{chr value. For example, '~0+group'. Variables in the design
must be present in colData. For de_pkg="edger", passed to glmQLFit}

\item{contrasts}{list of chr vectors containing variable name, numerator
level, denominator level. For nested contrasts, use the format
'level2-level1' for the numerator and denominator values.}

\item{coefs}{list of integers or character vectors indicating which
coefficients of the linear model are to be tested equal to zero. Values
must be columns or column names of design.}

\item{sample_meta}{Column meta data as DataFrame or data.frame}

\item{lfc}{See edgeR::glmTreat. Only used for test="glmTreat".}

\item{de_pkg}{"edger" or "deseq2". Only used if x is a BbcSE}
}
\value{
A BbcSE object or a BbcEdgeR object or...
}
\description{
Identify DE genes.
}
\details{
Uses methods from the package corresponding to the de_pkg paramter:
\describe{ \item{edger}{Uses edgeR::glmQLFit folllowed by either glmQLFTest
or glmTreat} \item{deseq2}{Not implemented yet.} }
}
\section{Methods (by class)}{
\itemize{
\item \code{DGEList}: Run glmQLFTest or glmTreat. Accepts contrasts in the
format (a matrix) produced by limma::makeContrasts

\item \code{BbcSE}: Run edgeR or DESeq2 DE testing workflows.
}}

\seealso{
\code{\link[edgeR]{glmQLFit} \link[edgeR]{glmQLFTest}
  \link[edgeR]{glmTreat} }
}
