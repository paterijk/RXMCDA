\name{getAlternativesAffectations}
\alias{getAlternativesAffectations}

\title{Get alternative affectations}

\description{Gets alternative affectations, stored in the \code{<alternativesAffectations>} tag, from an XML tree written according to the \code{XMCDA} standard.}

\usage{
getAlternativesAffectations(tree, alternativesIDs, categoriesIDs, 
                            mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{alternativesIDs}{A vector containing the IDs of the alternatives to be considered for the extractions.}
  \item{categoriesIDs}{A vector containing the IDs of the categories to be considered for the extractions.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain \emph{n} x \emph{m} matrices representing each an \code{<alternativesAffectations>}, where \emph{n} is number of considered alternatives and \emph{m} is number of considered categories.
  Each cell \code{[i, j]} of each matrix is boolean and corresponds to encoded relation between i-th alternative and j-th category.
  Elements of returned list are named according to the \code{mcdaConcept} attribute if it can be found.}
  
  \item{status}{Either OK if all the \code{<alternativesAffectations>} tags could be correctly read, or the description of the error.}
}

\examples{
tree <- xmlTreeParse(system.file("extdata",
                                 "testFile.xml",
                                 package="RXMCDA"), 
                                 useInternalNodes=TRUE)

alternativesIDs <- getAlternativesIDs(tree)
categoriesIDs <- getCategoriesIDs(tree)
altAff <- getAlternativesAffectations(tree, 
                                      alternativesIDs[[1]], categoriesIDs[[1]])

}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
