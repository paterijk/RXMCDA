\name{putAlternativesIDs}
\alias{putAlternativesIDs}

\title{Put ids of alternatives}

\description{Puts ids of alternatives in an \code{alternatives} tag in an XML tree written according to the \code{XMCDA} standard.}

\usage{
putAlternativesIDs(tree, alternativesIDs, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{alternativesIDs}{A vector containing the alternatives' IDs.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be written.}
  }

\value{
  The function returns a list structured as follows: 
  
  \item{status}{Either OK if all the \code{<alternative>} tags could be correctly put, or the description of the error.}
}

\examples{
altIDs <- c("x","y","z")

tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", 
           namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", 
           "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.1.0"), 
           parent=tree)

putAlternativesIDs(tree,altIDs,mcdaConcept="test")

altIDs2 <- getAlternativesIDs(tree)
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
