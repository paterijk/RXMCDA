\name{getMobiusCapacities}
\alias{getMobiusCapacities}

\title{Get Mobius capacities}

\description{Gets Mobius capacities, stored in the \code{<criteriaValues>} tag, from an XML tree written according to the \code{XMCDA} standard.}

\usage{
getMobiusCapacities(tree, criteriaIDs, numberOfCriteria, 
                    kadditivity, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{criteriaIDs}{A vector containing the IDs of the criteria to be considered for the extractions.}
  \item{numberOfCriteria}{The total number of criteria to be considered.}
  \item{kadditivity}{The level of k-additivity to be considered.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain the \code{<criteriaValues>} found in \code{<tree>} as capacities (see \code{kappalab} package for details). 
  These elements are named according to the \code{mcdaConcept} attribute if it can be found.}
  
  \item{status}{Either OK if all the \code{<criteriaValues>} tags could be correctly read, or the description of the error.}
}

\examples{
tree <- xmlTreeParse(system.file("extdata",
                                 "testFile.xml",
                                 package="RXMCDA"),
                     useInternalNodes=TRUE)

critIDs <- getCriteriaIDs(tree)

capa <- getMobiusCapacities(tree, critIDs[[1]], 5, 5,
                            mcdaConcept="mobiusCapacity")
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
