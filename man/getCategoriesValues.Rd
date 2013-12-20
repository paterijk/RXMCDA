\name{getCategoriesValues}
\alias{getCategoriesValues}

\title{Get values related to categories}

\description{Gets values related to categories, stored in the \code{<categoriesValues>} tag, from an XML tree written according to the \code{XMCDA} standard.}

\usage{
getCategoriesValues(tree, categoriesIDs, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{categoriesIDs}{A vector containing the IDs of the categories to be considered for the extractions.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain matrices representing each an \code{<categoriesValues>}. 
  Each line of each matrix corresponds to an element of the type "the value assigned to category c1 is x". 
  A line is structured as follows: the first element encodes the index of the ID of category c1 in \code{categoriesIDs}, the second element encodes the value x.
  These elements are named according to the \code{mcdaConcept} attribute if it can be found.}
  
  \item{status}{Either OK if all the \code{<categoriesValues>} tags could be correctly read, or the description of the error.}
}

\examples{
tree <- xmlTreeParse(system.file("extdata",
                                 "testFile.xml",
                                 package="RXMCDA"), 
                     useInternalNodes=TRUE)

categoriesIDs <- getCategoriesIDs(tree)
categoriesValues <- getCategoriesValues(tree, categoriesIDs[[1]])

}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
