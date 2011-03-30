\name{putAlternativeValue}
\alias{putAlternativeValue}

\title{Put a value related to an alternative}

\description{Puts a value related to an alternative (or a set of alternatives) as a \code{alternativeValue} tag in an XML tree written according to the \code{XMCDA} standard.}

\usage{
putAlternativeValue(tree, alternativeValue, alternativesIDs = NULL, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{alternativeValue}{A float representing the value assigned to the alternative.}
  \item{alternativesIDs}{A string representing the alternative's ID or a vector representing a set of alternatives IDs.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be written.}
  }

\value{
  The function returns a list structured as follows: 
  
  \item{status}{Either OK if the \code{<alternativeValue>} tag could be correctly put, or the description of the error.}
}

\examples{
altID <- c("x")

tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.1.0"), parent=tree)

putAlternativeValue(tree,0.8,alternativesIDs = altID)
}

\keyword{methods}
