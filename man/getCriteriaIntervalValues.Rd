\name{getCriteriaIntervalValues}
\alias{getCriteriaIntervalValues}

\title{Get interval values related to criteria}

\description{Extracts the number of criteria from an XML tree written according to the \code{XMCDA} standard.}

\usage{
getCriteriaIntervalValues(tree, criteriaIDs, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{criteriaIDs}{A vector containing the IDs of the criteria to be considered for the extractions.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain the number of criteria of each \code{<criteria>} found in \code{<tree>}. These elements are named according to the \code{mcdaConcept} attribute if it can be found.}
  
  \item{status}{Either OK if all the \code{<criteria>} tags could be correctly read, or the description of the error.}
}

\examples{
tree <- xmlTreeParse(system.file("extdata",
                                 "testFile.xml",
                                 package="RXMCDA"), 
                     useInternalNodes=TRUE)

critIDs <- getCriteriaIDs(tree)

intVals <- getCriteriaIntervalValues(tree, critIDs[[1]])

}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
