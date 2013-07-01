\name{getCriteriaValues}
\alias{getCriteriaValues}

\title{Get values related to criteria}

\description{Gets values related to criteria, stored in the \code{<criteriaValues>} tag, from an XML tree written according to the \code{XMCDA} standard.}

\usage{
getCriteriaValues(tree, criteriaIDs, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{criteriaIDs}{A vector containing the IDs of the criteria to be considered for the extractions.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain matrices representing each an \code{<criteriaValues>}. 
  Each line of each matrix corresponds to an element of the type "the value assigned to criterion g1 is x". 
  A line is structured as follows: the first element encodes the index of the ID of criterion g1 in \code{criteriaIDs}, the second element encodes the value x.
  These elements are named according to the \code{mcdaConcept} attribute if it can be found.}
  
  \item{status}{Either OK if all the \code{<criteriaValues>} tags could be correctly read, or the description of the error.}
}

\examples{
tree <- xmlTreeParse(system.file("extdata",
                                 "testFile.xml",
                                 package="RXMCDA"), 
                     useInternalNodes=TRUE)

critIDs <- getCriteriaIDs(tree)

critVals <- getCriteriaValues(tree, critIDs[[1]])
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
