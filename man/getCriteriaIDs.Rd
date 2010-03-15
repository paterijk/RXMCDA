\name{getCriteriaIDs}
\alias{getCriteriaIDs}

\title{Get IDs of criteria}

\description{Gets the IDs of criteria, stored in the \code{<criteria>} tag, from an XML tree written according to the \code{XMCDA} standard.}

\usage{
getCriteriaIDs(tree, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain vectors with the criteria's IDs which have been found in each \code{<criteria>} tag. These elements are named according to the \code{mcdaConcept} attribute if it can be found.}
  
  \item{status}{Either OK if all the \code{<criteria>} tags could be correctly read, or the description of the error.}
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
