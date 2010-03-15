\name{putAlternativesPlot}
\alias{putAlternativesPlot}

\title{Put plot in base64 related to alternatives}

\description{Puts a plot coded in base64 as an \code{alternativeValue} tag in an XML tree written according to the \code{XMCDA} standard.}

\usage{
putAlternativesPlot(tree, base64plot, alternativesIDs, mcdaConcept=NULL, name=NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{base64plot}{String containing the base64 encoding of the plot.}
  \item{alternativesIDs}{A vector of alternatives' IDs.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be written.}
  \item{name}{A string containing the specific \code{name} attribute which should be written.}
  }

\value{
  The function returns a list structured as follows: 
  
  \item{status}{Either OK if  the \code{<alternativeValue>} tag could be correctly put, or the description of the error.}
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
