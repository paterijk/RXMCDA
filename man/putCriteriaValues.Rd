\name{putCriteriaValues}
\alias{putCriteriaValues}

\title{Put values related to criteria}

\description{Puts values related to criteria as a \code{criteriaValues} tag in an XML tree written according to the \code{XMCDA} standard.}

\usage{
putCriteriaValues(tree, criteriaValues, criteriaIDs, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{criteriaValues}{A matrix representing a \code{<criteriaValues>}. 
  Each line of each matrix corresponds to an element of the type "the value assigned to criterion g1 is x". 
  A line is structured as follows: the first element encodes the index of the ID of criterion g1 in \code{criteriaIDs}, the second element encodes the value x.
  These elements are named according to the \code{mcdaConcept} attribute if it can be found.}
  \item{criteriaIDs}{A vector containing the criteria's IDs.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be written.}
  }

\value{
  The function returns a list structured as follows: 
  
  \item{status}{Either OK if all the \code{<criteriaValues>} tags could be correctly put, or the description of the error.}
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
