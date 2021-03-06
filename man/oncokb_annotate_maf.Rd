% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oncokb-annotate-maf.R
\name{oncokb_annotate_maf}
\alias{oncokb_annotate_maf}
\alias{query_oncokb}
\title{Annotate OncoKB levels of evidence}
\source{
\url{oncokb.org}

\url{github.com/oncokb/oncokb-annotator}
}
\usage{
query_oncokb(gene, protein_change, variant_type, start, end,
  cancer_type = "CANCER")

oncokb_annotate_maf(maf, cancer_types = NULL, parallelize = TRUE)
}
\arguments{
\item{gene}{Gene.}

\item{protein_change}{Abbreviated form, e.g. "H1047R".}

\item{variant_type}{Lower case variant type, e.g. "missense".}

\item{start}{Genomic start position of variant.}

\item{end}{Genomic end position of variant.}

\item{cancer_type}{Oncotree code for cancer type. Can be left blank.}

\item{maf}{Input MAF.}

\item{cancer_types}{Data frame with samples mapped to cancer type for accurate levels of actionability.}

\item{parallelize}{Boolean indicating whether to parallelize annotation, using \code{future} backend.}
}
\value{
Annotated MAF with columns indicating functionality of mutation and levels of actionability.
}
\description{
Adds OncoKB oncogenicity and actionability annotation to VEP-annotated MAF. See URLs below.
}
\examples{
query_oncokb('PIK3CA', 'H1047R', 'missense')

}
