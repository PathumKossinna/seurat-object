% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/seurat.R, R/assay.R, R/assay5.R
\name{HVFInfo}
\alias{HVFInfo}
\alias{VariableFeatures}
\alias{VariableFeatures<-}
\alias{SVFInfo}
\alias{SpatiallyVariableFeatures}
\alias{HVFInfo.Seurat}
\alias{VariableFeatures.Seurat}
\alias{VariableFeatures<-.Seurat}
\alias{SVFInfo.Seurat}
\alias{SpatiallyVariableFeatures.Seurat}
\alias{HVFInfo.Assay}
\alias{SpatiallyVariableFeatures.Assay}
\alias{SVFInfo.Assay}
\alias{VariableFeatures.Assay}
\alias{VariableFeatures<-.Assay}
\alias{HVFInfo.Assay5}
\alias{VariableFeatures.Assay5}
\alias{VariableFeatures<-.Assay5}
\title{Highly Variable Features}
\usage{
HVFInfo(object, method, status = FALSE, ...)

VariableFeatures(object, selection.method = NULL, ...)

VariableFeatures(object, ...) <- value

SVFInfo(object, selection.method, status, ...)

SpatiallyVariableFeatures(object, selection.method, ...)

\method{HVFInfo}{Seurat}(
  object,
  method = NULL,
  status = FALSE,
  assay = NULL,
  selection.method = method,
  ...
)

\method{VariableFeatures}{Seurat}(
  object,
  selection.method = NULL,
  assay = NULL,
  nfeatures = NULL,
  layer = NULL,
  simplify = TRUE,
  ...
)

\method{VariableFeatures}{Seurat}(object, assay = NULL, ...) <- value

\method{SVFInfo}{Seurat}(
  object,
  selection.method = c("markvariogram", "moransi"),
  status = FALSE,
  assay = NULL,
  ...
)

\method{SpatiallyVariableFeatures}{Seurat}(
  object,
  selection.method = "moransi",
  assay = NULL,
  decreasing = TRUE,
  ...
)

\method{HVFInfo}{Assay}(object, method, status = FALSE, selection.method = deprecated(), ...)

\method{SpatiallyVariableFeatures}{Assay}(
  object,
  selection.method = "moransi",
  decreasing = TRUE,
  ...
)

\method{SVFInfo}{Assay}(
  object,
  selection.method = c("markvariogram", "moransi"),
  status = FALSE,
  ...
)

\method{VariableFeatures}{Assay}(object, selection.method = NULL, ...)

\method{VariableFeatures}{Assay}(object, ...) <- value

\method{HVFInfo}{Assay5}(object, method = NULL, status = FALSE, layer = NULL, strip = TRUE, ...)

\method{VariableFeatures}{Assay5}(
  object,
  method = NULL,
  layer = NA,
  simplify = TRUE,
  nfeatures = Inf,
  ...
)

\method{VariableFeatures}{Assay5}(object, method = "custom", layer = NULL, ...) <- value
}
\arguments{
\item{object}{An object}

\item{status}{Add variable status to the resulting data frame}

\item{...}{Arguments passed to other methods}

\item{selection.method}{Which method to pull. For \code{HVFInfo} and
\code{VariableFeatures}, choose one from one of the
following:
\itemize{
 \item \dQuote{vst}
 \item \dQuote{sctransform} or \dQuote{sct}
 \item \dQuote{mean.var.plot}, \dQuote{dispersion}, \dQuote{mvp}, or
  \dQuote{disp}
}
For \code{SVFInfo} and \code{SpatiallyVariableFeatures}, choose from:
\itemize{
 \item \dQuote{markvariogram}
 \item \dQuote{moransi}
}}

\item{value}{A character vector of variable features}

\item{assay}{Name of assay to pull highly variable feature information for}

\item{decreasing}{Return features in decreasing order (most spatially
variable first).}
}
\value{
\code{HVFInfo}: A data frame with feature means, dispersion, and
scaled dispersion

\code{VariableFeatures}: a vector of the variable features

\code{SVFInfo}: a data frame with the spatially variable features

\code{SpatiallyVariableFeatures}: a character vector of the spatially
variable features
}
\description{
Get and set variable feature information for an \code{\link{Assay}} object.
\code{HVFInfo} and \code{VariableFeatures} utilize generally variable
features, while \code{SVFInfo} and \code{SpatiallyVariableFeatures} are
restricted to spatially variable features
}
\examples{
# Get the HVF info from a specific Assay in a Seurat object
HVFInfo(object = pbmc_small, assay = "RNA")[1:5, ]

# Get the HVF info directly from an Assay object
HVFInfo(pbmc_small[["RNA"]], method = 'vst')[1:5, ]

}
\concept{data-access}
