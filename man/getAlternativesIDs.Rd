\name{getAlternativesIDs}
\alias{getAlternativesIDs}

\title{Get IDs of alternatives}

\description{Gets the IDs of alternatives, stored in the \code{<alternatives>} tag, from an XML tree written according to the \code{XMCDA} standard.}

\usage{
getAlternativesIDs(tree, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain vectors with the alternatives' IDs which have been found in each \code{<alternatives>} tag. These elements are named according to the \code{mcdaConcept} attribute if it can be found.}
  
  \item{status}{Either OK if all the \code{<alternatives>} tags could be correctly read, or the description of the error.}
}

\examples{
tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", 
           namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", 
           "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.0.0"), 
           parent=tree)

root<-getNodeSet(tree, "/xmcda:XMCDA")

alternatives<-newXMLNode("alternatives", attrs=c(mcdaConcept="actions"), 
                         parent=root[[1]], 
                         namespace=c())

alternative<-newXMLNode("alternative",attrs = c(id="x1"), 
                        parent=alternatives, namespace=c())
alternative<-newXMLNode("alternative",attrs = c(id="x2"), 
                        parent=alternatives, namespace=c())
alternative<-newXMLNode("alternative",attrs = c(id="x3"), 
                        parent=alternatives, namespace=c())

y<-getNodeSet(tree,"//alternatives")

x<-getAlternativesIDs(y[[1]])
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
