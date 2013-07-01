\name{getPerformanceTables}
\alias{getPerformanceTables}

\title{Get performance tables}

\description{Extracts the performance tables stored in the \code{<performanceTable} tags from an XML tree written according to the \code{XMCDA} standard.}

\usage{
getPerformanceTables(tree, altIDs = NULL, critIDs = NULL, 
                     mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{altIDs}{A vector containing the IDs of the alternatives to be considered for the extractions.}
  \item{critIDs}{A vector containing the IDs of the criteria to be considered for the extractions.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain the performance tables found in each \code{<performanceTable>} of \code{<tree>} as matrices.
  The rows of each matrix are labelled according to the alternatives' IDs and the columns according to the criteria IDs.
  These elements are named according to the \code{mcdaConcept} attribute if it can be found.}
  
  \item{status}{Either OK if all the \code{<performanceTable>} tags could be correctly read, or the description of the error.}
}

\examples{
tree <- xmlTreeParse(system.file("extdata","testFile.xml",package="RXMCDA"), 
                     useInternalNodes=TRUE)

tables <- getPerformanceTables(tree)
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
