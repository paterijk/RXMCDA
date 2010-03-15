\name{getNumberOfAlternatives}
\alias{getNumberOfAlternatives}

\title{Get number of alternatives}

\description{Extracts the number of alternatives from the \code{<alternatives>} tag from an XML tree written according to the \code{XMCDA} standard.}

\usage{
getNumberOfAlternatives(tree, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain the number of alternatives of each \code{<alternatives>} tag found in \code{<tree>}. These elements are named according to the \code{mcdaConcept} attribute if it can be found.}
  
  \item{status}{Either OK if all the \code{<alternatives>} tags could be correctly read, or the description of the error.}
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
