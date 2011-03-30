\name{getAlternativesComparisonsLabels}
\alias{getAlternativesComparisonsLabels}

\title{Get comparisons of alternatives}

\description{Extracts \code{<alternativesComparisons>} from an XML tree written according to the \code{XMCDA} standard and stores the IDs of the concerned alternatives.}

\usage{
getAlternativesComparisonsLabels(tree, altIDs=NULL, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{altIDs}{A vector containing the IDs of the alternatives to be considered for the extractions.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain the \code{<alternativesComparisons>} found in \code{<tree>} as matrices. 
  These elements are named according to the \code{mcdaConcept} attribute if it can be found. 
  Each line of each matrix corresponds to one constraint of the type "alternative a is preferred to alternative b with preference threshold delta". 
  A line is structured as follows: the first element encodes the ID of alternative a, the second element encodes the ID of alternative b, and the last element contains the preference threshold delta.}
  
  \item{status}{Either OK if all the \code{<alternativesComparisons>} tags could be correctly read, or the description of the error.}
}

\examples{
tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.1.0"), parent=tree)

root<-getNodeSet(tree, "/xmcda:XMCDA")

aC<-newXMLNode("alternativesComparisons", parent=root[[1]], namespace=c())

pairs<-newXMLNode("pairs", parent=aC, namespace=c())
pair<-newXMLNode("pair", parent=pairs, namespace=c())

initial<-newXMLNode("initial", parent=pair, namespace=c())
newXMLNode("alternativeID", "a01", parent=initial, namespace=c())

terminal<-newXMLNode("terminal", parent=pair, namespace=c())
newXMLNode("alternativeID", "a02", parent=terminal, namespace=c())

value<-newXMLNode("value", parent=pair, namespace=c())
newXMLNode("real", "0.5", parent=value, namespace=c())

alternativesIDs <- c("a01","a02")

y<-getNodeSet(tree,"//alternativesComparisons")

x<-getAlternativesComparisonsLabels(y[[1]], alternativesIDs)
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
