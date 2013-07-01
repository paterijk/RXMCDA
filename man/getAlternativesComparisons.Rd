\name{getAlternativesComparisons}
\alias{getAlternativesComparisons}

\title{Get comparisons of alternatives}

\description{Extracts \code{<alternativesComparisons>} from an XML tree written according to the \code{XMCDA} standard and stores the performances of the concerned alternatives.}

\usage{
getAlternativesComparisons(tree, performanceTable, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{performanceTable}{A matrix containing the performance table to be considered, whose dimnames are the alternatives' IDs (rows) and the criteria's IDs (columns).}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain the \code{<alternativesComparisons>} found in \code{<tree>} as matrices. 
  These elements are named according to the \code{mcdaConcept} attribute if it can be found. 
  Each line of each matrix corresponds to one constraint of the type "alternative a is preferred to alternative b with preference threshold delta". 
  A line is structured as follows: the first n elements encode alternative a (via the values it takes in \code{performanceTable}), the next n elements encode alternative b, and the last element contains the preference threshold delta.}
  
  \item{status}{Either OK if all the \code{<criteria>} tags could be correctly read, or the description of the error.}
}

\examples{
tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", 
           namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", 
           "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.1.0"), 
           parent=tree)

root<-getNodeSet(tree, "/xmcda:XMCDA")

aC<-newXMLNode("alternativesComparisons", parent=root[[1]] , namespace=c())

pairs<-newXMLNode("pairs", parent=aC, namespace=c())
pair<-newXMLNode("pair", parent=pairs, namespace=c())

initial<-newXMLNode("initial", parent=pair)
newXMLNode("alternativeID", "a01", parent=initial, namespace=c())

terminal<-newXMLNode("terminal", parent=pair, namespace=c())
newXMLNode("alternativeID", "a02", parent=terminal, namespace=c())

value<-newXMLNode("value", parent=pair, namespace=c())
newXMLNode("real", "0.5", parent=value, namespace=c())

alternativesIDs <- c("a01","a02")
criteriaIDs <- c("g1","g2")

performance.table<-matrix(nrow=length(alternativesIDs),
                          ncol=length(criteriaIDs),
                          dimnames = list(alternativesIDs,criteriaIDs))

for (i in 1:length(alternativesIDs)){
  for (j in 1:length(criteriaIDs)){
    performance.table[i,j] = runif(1)
  }
}

y<-getNodeSet(tree,"//alternativesComparisons")

x<-getAlternativesComparisons(y[[1]], performance.table)
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
