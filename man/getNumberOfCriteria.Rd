\name{getNumberOfCriteria}
\alias{getNumberOfCriteria}

\title{Get number of criteria}

\description{Extracts the number of criteria from an XML tree written according to the \code{XMCDA} standard.}

\usage{
getNumberOfCriteria(tree, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain the number of criteria of each \code{<criteria>} found in \code{<tree>}. These elements are named according to the \code{mcdaConcept} attribute if it can be found.}
  
  \item{status}{Either OK if all the \code{<criteria>} tags could be correctly read, or the description of the error.}
}

\examples{
tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", 
           namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", 
           "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.0.0"), 
           parent=tree)

root<-getNodeSet(tree, "/xmcda:XMCDA")

criteria<-newXMLNode("criteria", parent=root[[1]], namespace=c())

criterion<-newXMLNode("criterion",attrs = c(id="g1"),
                      parent=criteria, namespace=c())

y<-getNodeSet(tree,"//criteria")

x<-getNumberOfCriteria(y[[1]])
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
