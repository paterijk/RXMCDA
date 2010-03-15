\name{putCapacity}
\alias{putCapacity}

\title{Put a capacity}

\description{Puts values related to a capacity as a \code{criteriaValues} tag in an XML tree written according to the \code{XMCDA} standard.}

\usage{
putCapacity(tree, capacity, criteriaIDs, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{capacity}{An object of type \code{capacity} (see \code{kappalab} package).}
  \item{criteriaIDs}{A vector containing the criteria's IDs.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be written.}
  }

\value{
  The function returns a list structured as follows: 
  
  \item{status}{Either OK if all the \code{<criteriaValues>} tags could be correctly put, or the description of the error.}
}

\examples{

}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
