
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bbcRNA: An R package for facilitating RNA-Seq analysis

<!-- badges: start -->

<!-- badges: end -->

The goal of bbcRNA is to facilitate RNA-seq analysis, starting from
counts and ending with differentially expressed gene lists and
enerichment analyses. The major feature are classes to store different
parts of the RNA-Seq analysis and wrapper functions for running popular
tools such as EdgeR and ClusterProfiler. See [the bbcRNA
website](https://vari-bbc.github.io/bbcRNA/) for a built vignette.

## Installation

You can install bbcRNA from [GitHub](https://github.com/vari-bbc) with:

``` r
if (!requireNamespace("devtools", quietly = TRUE))
  install.packages("devtools")
  
devtools::install_github("vari-bbc/bbcRNA")
```

## New classes defined in the bbcRNA package

New classes have been defined to enable more convenient storage of
different parts of a DE analysis.

### The BbcSE class

The `BbcSE` class extends SummarizedExperiment. Additional slots are:

1.  `aln_metrics`: a matrix containing alignment metrics for samples.
2.  `edger` : a `BbcEdgeR` object.
3.  `deseq2`: For storing DESeqDataSet and DESeqResults; not implemented
    yet.

### The BbcEdgeR class

Slots are:

1.  `dgelist`: a `DGEList` object.
2.  `de_results`: a list. First element is always a `DGEGLM` object. The
    others are edgeR result objects.
3.  `norm_cts`: a `SummarizedExperiment` object for storing normalized
    counts.

## Usage

``` r
# attach the package
library(bbcRNA)
#> 
#> Registered S3 method overwritten by 'enrichplot':
#>   method               from
#>   fortify.enrichResult DOSE

# run the BbcSE constructor without any data to show the structure 
BbcSE()
#> class: BbcSE 
#> dim: 0 0 
#> metadata(0):
#> assays(1): counts
#> rownames: NULL
#> rowData names(0):
#> colnames: NULL
#> colData names(0):
#> aln_metrics(0): 
#> edger(3): dgelist de_results norm_cts 
#> deseq2(0):

# run the BbcEdgeR constructor without any data to show the structure 
BbcEdgeR()
#> An object of class "BbcEdgeR"
#> Slot "dgelist":
#> An object of class "DGEList"
#> $counts
#> <0 x 0 matrix>
#> 
#> $samples
#> [1] group        lib.size     norm.factors
#> <0 rows> (or 0-length row.names)
#> 
#> 
#> Slot "de_results":
#> list()
#> 
#> Slot "norm_cts":
#> class: SummarizedExperiment 
#> dim: 0 0 
#> metadata(0):
#> assays(0):
#> rownames: NULL
#> rowData names(0):
#> colnames: NULL
#> colData names(0):
```
