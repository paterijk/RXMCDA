\name{getNumberOfAlternatives}
\alias{getNumberOfAlternatives}

\title{Get number of alternatives}

\description{Extracts the number of alternatives from the \code{<alternatives>} tag from an XML tree written according to the \code{XMCDA} standard.}

\usage{
getNumberOfAlternatives(tree, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain the number of alternatives of each \code{<alternatives>} tag found in \code{<tree>}. These elements are named according to the \code{mcdaConcept} attribute if it can be found.}
  
  \item{status}{Either OK if all the \code{<alternatives>} tags could be correctly read, or the description of the error.}
}

\examples{
tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.0.0"), parent=tree)

root<-getNodeSet(tree, "/xmcda:XMCDA")

alternatives<-newXMLNode("alternatives", parent=root[[1]], namespace=c())

newXMLNode("alternative",attrs = c(id="x1"), parent=alternatives, namespace=c())

newXMLNode("alternative",attrs = c(id="x2"), parent=alternatives, namespace=c())

y<-getNodeSet(tree,"//alternatives")

x<-getNumberOfAlternatives(y[[1]])
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
