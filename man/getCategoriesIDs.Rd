\name{getCategoriesIDs}
\alias{getCategoriesIDs}

\title{Get IDs of categories}

\description{Gets the IDs of categories, stored in the \code{<categories>} tag, from an XML tree written according to the \code{XMCDA} standard.}

\usage{
getCategoriesIDs(tree, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain vectors with the categories' IDs which have been found in each \code{<categories>} tag. These elements are named according to the \code{mcdaConcept} attribute if it can be found.}
  
  \item{status}{Either OK if all the \code{<categories>} tags could be correctly read, or the description of the error.}
}

\examples{
tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", 
           namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", 
           "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.0.0"), 
           parent=tree)

root<-getNodeSet(tree, "/xmcda:XMCDA")

categories<-newXMLNode("categories", attrs=c(mcdaConcept="classes"), 
                         parent=root[[1]], 
                         namespace=c())

newXMLNode("category", attrs = c(id="c1"), parent=categories, namespace=c())
newXMLNode("category", attrs = c(id="c2"), parent=categories, namespace=c())
newXMLNode("category", attrs = c(id="c3"), parent=categories, namespace=c())

y<-getNodeSet(tree,"//categories")

x<-getCategoriesIDs(y[[1]])
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
