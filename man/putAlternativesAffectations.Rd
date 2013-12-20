\name{putAlternativesAffectations}
\alias{putAlternativesAffectations}

\title{Puts alternative affectations}

\description{Puts alternative affectations as an \code{<alternativesAffectations>} tag in an XML tree written according to the \code{XMCDA} standard.}

\usage{
putAlternativesAffectations(tree, alternativesAffectations,
        alternativesIDs, categoriesIDs,
        asIntervalsIfPossible = FALSE, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{alternativesAffectations}{An \emph{n} x \emph{m} matrix representing \code{<alternativesAffectations>}, where \emph{n} is number of considered alternatives and \emph{m} is number of considered categories.
  Each cell \code{[i, j]} of each matrix is boolean and corresponds to encoded relation between i-th alternative and j-th category.}
  \item{alternativesIDs}{A vector containing the IDs of the alternatives to be considered for the extractions.}
  \item{categoriesIDs}{A vector containing the IDs of the categories to be considered for the extractions.}
  \item{asIntervalsIfPossible}{Whether put each affectation as a \code{<categoriesInterval>} tag (if possible) or as a \code{<categoriesSet>} tag.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
}

\value{
  The function returns a list structured as follows:
  
  \item{status}{Either OK if all the \code{<alternativesAffectations>} tags could be correctly put, or the description of the error.}
}

\examples{
alternativesIDs <-  c("a01", "a02", "a03", "a04")
categoriesIDs <- c("c01", "c02", "c03", "c04")
altAff = rbind(c(FALSE, TRUE, TRUE, TRUE),
      c(FALSE, TRUE, FALSE, FALSE),
      c(TRUE, TRUE, TRUE, TRUE),
      c(TRUE, TRUE, TRUE, FALSE))

tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", 
           namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", 
           "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.1.0"), 
           parent=tree)
     
putAlternativesAffectations(tree, altAff, alternativesIDs, categoriesIDs, TRUE)

}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
