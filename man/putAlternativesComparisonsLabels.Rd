\name{putAlternativesComparisonsLabels}
\alias{putAlternativesComparisonsLabels}

\title{Put comparisons of alternatives}

\description{Writes \code{<alternativesComparisons>} in an XML tree written according to the \code{XMCDA} standard.}

\usage{
putAlternativesComparisonsLabels(tree, alternativesComparisons, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{alternativesComparisons}{A matrix containing the \code{<alternativesComparisons>} as a matrix.  Each line of each matrix corresponds to one constraint of the type "alternative a is preferred to alternative b with preference threshold delta". 
  A line is structured as follows: the first element encodes the ID of alternative a, the second element encodes the ID of alternative b, and the last element contains a valuation.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be written.}
  }

\value{
  The function returns a list structured as follows: 
  
  \item{status}{Either OK if all the \code{<alternativesComparisons>} tags could be correctly put, or the description of the error.}
}

\examples{
tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.1.0"), parent=tree)

comps <- rbind(c("x", "y", "0.07"), c("y", "z", "0.01"))

altIDs <- c("x","y","z")

putAlternativesComparisonsLabels(tree,comps, mcdaConcept="newComparisons")
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
