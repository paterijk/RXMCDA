\name{getAlternativesComparisonsValues}
\alias{getAlternativesComparisonsValues}

\title{Get alternatives comparisons values}

\description{Gets alternatives comparisons values stored in the \code{<alternativesComparisons>} tag, from an XML tree written according to the \code{XMCDA} standard.}

\usage{
getAlternativesComparisonsValues(tree, alternativesIDs, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{alternativesIDs}{A vector containing the IDs of the alternatives to be considered for the extractions.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain matrices representing each an \code{<alternativesComparisons>}.
  Each row \code{c(i, j, v)} of each matrix corresponds to a comparison between i-th (\code{<initial>}) and j-th (\code{<terminal>}) alternatives with value \emph{v}.
  Elements of returned list are named according to the \code{mcdaConcept} attribute if it can be found.}
  
  \item{status}{Either OK if all the \code{<alternativesComparisons>} tags could be correctly read, or the description of the error.}
}

\examples{
tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", 
           namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", 
           "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.1.0"), 
           parent=tree)

root <- getNodeSet(tree, "/xmcda:XMCDA")
altComp <- newXMLNode("alternativesComparisons", parent=root[[1]] , namespace=c())
pairs <- newXMLNode("pairs", parent=altComp, namespace=c())


pair <- newXMLNode("pair", parent=pairs, namespace=c())
initial <- newXMLNode("initial", parent=pair)
newXMLNode("alternativeID", "a01", parent=initial, namespace=c())
terminal <- newXMLNode("terminal", parent=pair, namespace=c())
newXMLNode("alternativeID", "a02", parent=terminal, namespace=c())
value <- newXMLNode("value", parent=pair, namespace=c())
newXMLNode("real", "1", parent=value, namespace=c())

pair <- newXMLNode("pair", parent=pairs, namespace=c())
initial <- newXMLNode("initial", parent=pair)
newXMLNode("alternativeID", "a01", parent=initial, namespace=c())
terminal <- newXMLNode("terminal", parent=pair, namespace=c())
newXMLNode("alternativeID", "a03", parent=terminal, namespace=c())
value <- newXMLNode("value", parent=pair, namespace=c())
newXMLNode("real", "9", parent=value, namespace=c())

alternativesIDs <- c("a01", "a02", "a03")

x <- getAlternativesComparisonsValues(tree, alternativesIDs)

}
