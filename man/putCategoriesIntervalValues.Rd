\name{putCategoriesIntervalValues}
\alias{putCategoriesIntervalValues}

\title{Put interval values related to categories}

\description{Puts interval values related to categories as a \code{categoriesValues} tag in an XML tree written according to the \code{XMCDA} standard.}

\usage{
putCategoriesIntervalValues(tree, categoriesValues, categoriesIDs, 
                  mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{categoriesValues}{A matrix representing a \code{<categoriesValues>}. 
  Each line of each matrix corresponds to an element of the type "the interval value assigned to category c1 is [x, y]". 
  A line is structured as follows: the first element encodes the index of the ID of category c1 in \code{categoriesIDs}, the second element encodes the value x and the third element encodes the value y.
  These elements are named according to the \code{mcdaConcept} attribute if it can be found.}
  \item{categoriesIDs}{A vector containing the categories' IDs.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be written.}
  }

\value{
  The function returns a list structured as follows: 
  
  \item{status}{Either OK if all the \code{<categoriesValues>} tags could be correctly put, or the description of the error.}
}

\examples{
categoriesIDs <- c("c01", "c02", "c03", "c04")
categoriesIntervalValues <- rbind(c(1, 0.4, 0.7), c(2, 0.5, 0.5), c(4, 0.2, 0.9))

tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", 
           namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", 
           "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.1.0"), 
           parent=tree)

putCategoriesIntervalValues(tree, categoriesIntervalValues, categoriesIDs)
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
