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
library(kappalab)

tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", 
           namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", 
           "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.1.0"), 
           parent=tree)

mu<-capacity(0:15)

a <- Mobius(mu)

critIDs <- c("g1","g2","g3","g4")

putCapacity(tree, a, critIDs, mcdaConcept="capacity")
}


\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
