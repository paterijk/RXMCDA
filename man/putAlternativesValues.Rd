\name{putAlternativesValues}
\alias{putAlternativesValues}

\title{Put values related to alternatives}

\description{Puts values related to alternatives as an \code{alternativesValues} tag in an XML tree written according to the \code{XMCDA} standard.}

\usage{
putAlternativesValues(tree, alternativesValues, alternativesIDs, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{alternativesValues}{A matrix containing the values of the alternatives which have to be stored. Each line of this matrix represents a statement of the form "alternative x has value y". The first element of each line stores the index of the alternative x in \code{alternativesIDs}, the second element stores the value y.}
  \item{alternativesIDs}{A vector containing the alternatives' IDs.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be written.}
  }

\value{
  The function returns a list structured as follows: 
  
  \item{status}{Either OK if all the \code{<alternativesValues>} tags could be correctly put, or the description of the error.}
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
