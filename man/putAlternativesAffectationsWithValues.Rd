\name{putAlternativesAffectationsWithValues}
\alias{putAlternativesAffectationsWithValues}

\title{Puts alternative affectations with values}

\description{Puts alternative affectations as an \code{<alternativesAffectations>} tag in an XML tree written according to the \code{XMCDA} standard.}

\usage{
putAlternativesAffectationsWithValues(tree, alternativesAffectations,
        alternativesIDs, categoriesIDs, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{alternativesAffectations}{An \emph{n} x \emph{3} matrix representing \code{<alternativesAffectations>}, where \emph{n} is the number of alternative affectations to write.
  Each row \code{[i, ]} of the matrix represents affectation of \code{[i, 1]-th} alternative to \code{[i, 2]-th} category with value \code{[i, 3]}.}
  \item{alternativesIDs}{A vector containing the IDs of the alternatives to be considered for the extractions.}
  \item{categoriesIDs}{A vector containing the IDs of the categories to be considered for the extractions.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
}

\value{
  The function returns a list structured as follows:
  
  \item{status}{Either OK if all the \code{<alternativesAffectations>} tags could be correctly put, or the description of the error.}
}

\examples{
alternativesIDs <-  c("a01", "a02", "a03", "a04")
categoriesIDs <- c("c01", "c02", "c03")
altAff = rbind(c(1, 2, 0.1),
      c(1, 3, 0.0),
      c(2, 3, 1.0),
      c(4, 1, 0.5))

tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", 
           namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", 
           "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.1.0"), 
           parent=tree)
     
putAlternativesAffectationsWithValues(tree, altAff, alternativesIDs, categoriesIDs)

}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
