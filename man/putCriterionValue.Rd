\name{putCriterionValue}
\alias{putCriterionValue}

\title{Put a value related to a criterion}

\description{Puts a value related to a criterion (or a set of criteria) as a \code{criterionValue} tag in an XML tree written according to the \code{XMCDA} standard.}

\usage{
putCriterionValue(tree, criterionValue, criteriaIDs = NULL, 
                  mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{criterionValue}{A float representing the value assigned to the criterion.}
  \item{criteriaIDs}{A string representing the criterion's ID or a vector representing a set of criteria IDs.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be written.}
  }

\value{
  The function returns a list structured as follows: 
  
  \item{status}{Either OK if all the \code{<criterionValue>} tags could be correctly put, or the description of the error.}
}

\examples{
critID <- c("x")

tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", 
           namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", 
           "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.1.0"), 
           parent=tree)

putCriterionValue(tree,0.8,criteriaIDs = critID)
}

\keyword{methods}
