\name{getCriteriaComparisonsLabels}
\alias{getCriteriaComparisonsLabels}

\title{Get comparisons of alternatives}

\description{Extracts \code{<criteriaComparisons>} from an XML tree written according to the \code{XMCDA} standard and stores the IDs of the concerned criteria.}

\usage{
getCriteriaComparisonsLabels(tree, critIDs=NULL, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{critIDs}{A vector containing the IDs of the criteria to be considered for the extractions.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain the \code{<alternativesComparisons>} found in \code{<tree>} as matrices. 
  These elements are named according to the \code{mcdaConcept} attribute if it can be found. 
  Each line of each matrix corresponds to one constraint of the type "criterion g1 is preferred to criterion g2 with preference threshold delta". 
  A line is structured as follows: the first element encodes the ID of criterion g1, the second element encodes the ID of criterion g2, and the last element contains the preference threshold delta.}
  
  \item{status}{Either OK if all the \code{<criteriaComparisons>} tags could be correctly read, or the description of the error.}
}

\examples{
tree <- xmlTreeParse(system.file("extdata",
                                 "testFile.xml",
                                 package="RXMCDA"),
                     useInternalNodes=TRUE)

critIDs <- getCriteriaIDs(tree)

comps <- getCriteriaComparisonsLabels(tree, critIDs[[1]])
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
