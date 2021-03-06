% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Calculate_score.R
\name{CalculateSynergy}
\alias{CalculateSynergy}
\title{Calculate the synergy scores for drug combinations}
\usage{
CalculateSynergy(data, method = "ZIP", correction = TRUE, Emin = 0,
  Emax = 100, nan.handle = c("LL4", "L4"))
}
\arguments{
\item{data}{a list object generated by function \code{\link{ReshapeData}}}

\item{method}{a parameter to specify which models to use to calculate the synergy scores. Choices are "ZIP",
"Bliss", "HSA" and "Loewe". Defaults to "ZIP".}

\item{correction}{a parameter to specify if baseline correction is used or not. Defaults to TRUE.}

\item{Emin}{the minimal effect of the drug used in the 4-parameter log-logistic function to fit the dose-response 
curve. If it is not NA, it is fixed the value assigned by the user. Defaults to 0. For "Bliss", "HSA" and "Loewe" model,
it is used only when correction is required.}

\item{Emax}{the maximal effect of the drug used in the 4-parameter log-logistic function to fit the dose-response 
curve. If it is not NA, it is fixed the value assigned by the user. Defaults to 100. For "Bliss", "HSA" and "Loewe" model,
it is used only when correction is required.}

\item{nan.handle}{a parameter to specify if L.4 function or LL.4 function is used when fitting with LL.4 produces
NaNs.}
}
\value{
a list of the following components:
\item{dose.response.mats}{ the same as the input data component.}
\item{drug.pairs}{the same as the input data component.}
\item{scores}{a list of matrixes of synergy scores.}
\item{method}{the method used to calculate the synergy scores.}
}
\description{
A function to calculate the synergy scores for drug combinations using different
models.
}
\examples{
data("mathews_screening_data")
data <- ReshapeData(mathews_screening_data)
scores <- CalculateSynergy(data)
}
\references{
Yadav B, Wennerberg K, Aittokallio T, Tang J. Searching for Drug Synergy in Complex Dose-Response Landscape Using an Interaction Potency Model.
Computational and Structural Biotechnology Journal 2015; 13: 504-513.
}
\author{
Liye He \email{liye.he@helsinki.fi}
}
