\name{getCriteriaPairsValues}
\alias{getCriteriaPairsValues}

\title{Get values related to pairs of criteria}

\description{Gets values related to pairs of criteria, stored in the \code{<criteriaValues>} tag (pairs are represented as sets of two elements), from an XML tree written according to the \code{XMCDA} standard.}

\usage{
getCriteriaPairsValues(tree, criteriaIDs, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{criteriaIDs}{A vector containing the IDs of the criteria to be considered for the extractions.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain the \code{<criteriaValues>} found in \code{<tree>} as matrices. 
  These elements are named according to the \code{mcdaConcept} attribute if it can be found. 
  Each line of each matrix corresponds to one statement of the type "the value assigned to the couple of criteria (g1,g2) is x". 
  A line is structured as follows: the first element encodes the index of criterion g1 in \code{criteriaIDs}, the next element encodes the ID of criterion g2, and the last elements contain x.}
  
  \item{status}{Either OK if all the \code{<criteriaValues>} tags could be correctly read, or the description of the error.}
}

\examples{
tree <- xmlTreeParse(system.file("extdata","testFile.xml",package="RXMCDA"), useInternalNodes=TRUE)

critIDs <- getCriteriaIDs(tree)

pairsVals <- getCriteriaPairsValues(tree, critIDs[[1]],mcdaConcept="interactionValues")
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
