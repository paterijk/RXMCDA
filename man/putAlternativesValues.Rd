\name{putAlternativesValues}
\alias{putAlternativesValues}

\title{Put values related to alternatives}

\description{Puts values related to alternatives as an \code{alternativesValues} tag in an XML tree written according to the \code{XMCDA} standard.}

\usage{
putAlternativesValues(tree, alternativesValues, alternativesIDs, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{alternativesValues}{A matrix containing the values of the alternatives which have to be stored. Each line of this matrix represents a statement of the form "alternative x has value y". The first element of each line stores the index of the alternative x in \code{alternativesIDs}, the second element stores the value y.}
  \item{alternativesIDs}{A vector containing the alternatives' IDs.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be written.}
  }

\value{
  The function returns a list structured as follows: 
  
  \item{status}{Either OK if all the \code{<alternativesValues>} tags could be correctly put, or the description of the error.}
}

\examples{
altIDs <- c("x","y","z")

altVals <- rbind(c(1,1),c(2,0.5),c(3,0.2))

tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.1.0"), parent=tree)

putAlternativesValues(tree,altVals,altIDs)

altVals2 <- getAlternativesValues(tree, altIDs)
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
