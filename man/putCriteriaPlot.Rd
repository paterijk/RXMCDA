\name{putCriteriaPlot}
\alias{putCriteriaPlot}

\title{Put a plot in base64 related to criteria}

\description{Puts a plot coded in base64 as a \code{criterionValue} tag in an XML tree written according to the \code{XMCDA} standard.}

\usage{
putCriteriaPlot(tree, base64plot, criteriaIDs, mcdaConcept=NULL, name=NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{base64plot}{String containing the base64 encoding of the plot.}
  \item{criteriaIDs}{A vector of criteria's IDs.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be written.}
  \item{name}{A string containing the specific \code{name} attribute which should be written.}
  }

\value{
  The function returns a list structured as follows: 
  
  \item{status}{Either OK if the \code{<criterionValue>} tag could be correctly put, or the description of the error.}
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
