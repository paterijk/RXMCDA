\name{putPointsCriterionFunction}
\alias{putPointsCriterionFunction}

\title{Put value functions defined by sets of points}

\description{Puts value functions defined by sets of points in a \code{criterionFunction} tag under the \code{criterion} tag in an XML tree written according to the \code{XMCDA} standard.}

\usage{
putPointsCriterionFunction(tree, points, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{points}{A list, where each element is named by the ID of a criterion, and contains a matrix representing the points (each line is a point, the first column represents the abscissa, the second the ordinate).}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be written.}
  }

\value{
  The function returns a list structured as follows: 
  
  \item{status}{Either OK if all the \code{<criterionFunction>} tags could be correctly put, or the description of the error.}
}

\examples{
tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", 
           namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", 
           "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.1.0"), 
           parent=tree)

x<-list()
x<-c(x,list(g1=rbind(c(1,2),c(3,4))))
x<-c(x,list(g2=rbind(c(5,6),c(7,8),c(9,10))))
x<-c(x,list(g3=rbind(c(11,12))))
x<-c(x,list(g4=rbind(c(13,14),c(15,16))))

putPointsCriterionFunction(tree,x)
}

\keyword{methods}
