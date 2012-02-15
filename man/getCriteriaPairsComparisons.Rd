\name{getCriteriaPairsComparisons}
\alias{getCriteriaPairsComparisons}

\title{Get comparisons of pairs of criteria}


\description{Gets comparisons of pairs of criteria, stored in the \code{<criteriaComparisons>} tag (pairs are represented as sets of two elements), from an XML tree written according to the \code{XMCDA} standard.}

\usage{
getCriteriaPairsComparisons(tree, criteriaIDs, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{criteriaIDs}{A vector containing the IDs of the criteria to be considered for the extractions.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain the \code{<criteriaComparisons>} found in \code{<tree>} as matrices. 
  These elements are named according to the \code{mcdaConcept} attribute if it can be found. 
  Each line of each matrix corresponds to one constraint of the type "criterion g1 is preferred to criterion g2 with preference threshold delta". 
  A line is structured as follows: the first element encodes the index of criterion g1 in \code{criteriaIDs}, the next element encodes the ID of criterion g2, and the last element contains the preference threshold delta.}
  
  \item{status}{Either OK if all the \code{<criteriaComparisons>} tags could be correctly read, or the description of the error.}
}

\examples{
tree <- xmlTreeParse(system.file("extdata","testFile.xml",package="RXMCDA"), useInternalNodes=TRUE)

critIDs <- getCriteriaIDs(tree)

comps <- getCriteriaPairsComparisons(tree, critIDs[[1]])
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
