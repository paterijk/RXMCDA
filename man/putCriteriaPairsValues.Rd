\name{putCriteriaPairsValues}
\alias{putCriteriaPairsValues}

\title{Put values related to pairs of criteria}

\description{Puts values related to pairs of criteria as a \code{criteriaValues} tag in an XML tree written according to the \code{XMCDA} standard.}

\usage{
putCriteriaPairsValues(tree, criteriaPairsValues, criteriaIDs, 
                       mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{criteriaPairsValues}{A as matrix representing the values assigned to pairs of criteria.
  Each line of the matrix corresponds to one statement of the type "the value assigned to the couple of criteria (g1,g2) is x". 
  A line is structured as follows: the first element encodes the index of criterion g1 in \code{criteriaIDs}, the next element encodes the index of the ID of criterion g2, and the last elements contain x.}
  \item{criteriaIDs}{A vector containing the criteria's IDs.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be written.}
  }

\value{
  The function returns a list structured as follows: 
  
  \item{status}{Either OK if all the \code{<criteriaValues>} tags could be correctly put, or the description of the error.}
}

\examples{
tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", 
           namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", 
           "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.1.0"), 
           parent=tree)

critIDs <- c("g1","g2","g3","g4")

pairsVals <- rbind(c(1,2,0.17),c(2,3,0.5), c(3,4,0.16))

putCriteriaPairsValues(tree,pairsVals,critIDs)
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
