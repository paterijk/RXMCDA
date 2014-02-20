\name{putCriteriaMatrix}
\alias{putCriteriaMatrix}

\title{Puts values in a criteria matrix}

\description{Puts values related to a matrix of criteria as a \code{criteriaMatrix} tag in an XML tree written according to the \code{XMCDA} standard.}

\usage{
putCriteriaMatrix(tree, criteriaMatrix, 
                  mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{criteriaMatrix}{A matrix representing a \code{<criteriaMatrix>}. 
  The lines and the columns are named according to criteria IDs. 
  }

  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be written.}
  }

\value{
  The function returns a list structured as follows: 
  
  \item{status}{Either OK if the \code{<criteriaMatrix>} tag could be correctly put, or the description of the error.}
}

\examples{
critIDs <- c("x","y","z")

criteriaMatrix <- rbind(c(1,2,3),c(4,5,6),c(7,8,9))

rownames(criteriaMatrix) <- critIDs
colnames(criteriaMatrix) <- critIDs

tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", 
           namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", 
           "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.1.0"), 
           parent=tree)

putCriteriaMatrix(tree,criteriaMatrix)
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
