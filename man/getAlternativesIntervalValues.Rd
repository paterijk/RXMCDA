\name{getAlternativesIntervalValues}
\alias{getAlternativesIntervalValues}

\title{Get interval values related to alternatives}

\description{Gets intervals of values related to alternatives, stored in the \code{<alternativesValues>} tag, from an XML tree written according to the \code{XMCDA} standard.}

\usage{
getAlternativesIntervalValues(tree, alternativesIDs, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{alternativesIDs}{A vector containing the IDs of the alternatives to be considered for the extractions.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain matrices representing each an \code{<alternativesValues>}. 
  Each line of each matrix corresponds to an element of the type "the interval of values assigned to alternative a is [x,y]". 
  A line is structured as follows: the first element encodes the index of the ID of alternative a in \code{alternativesIDs}, the second element encodes the value x, and the last element encodes the value y.
  These elements are named according to the \code{mcdaConcept} attribute if it can be found.}
  
  \item{status}{Either OK if all the \code{<alternativesValues>} tags could be correctly read, or the description of the error.}
}

\examples{
tree <- xmlTreeParse(system.file("extdata","testFile.xml",package="RXMCDA"), useInternalNodes=TRUE)

altIDs <- getAlternativesIDs(tree)

altVals <- getAlternativesIntervalValues(tree, altIDs[[1]], mcdaConcept="alternativesIntervalValues")
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
