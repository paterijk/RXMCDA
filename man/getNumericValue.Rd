\name{getNumericValue}
\alias{getNumericValue}

\title{Get a numeric value}

\description{Extracts a numeric value (integer, real or rational) from an XML tree written according to the \code{XMCDA} standard and returns it as a real number.}

\usage{
getNumericValue(tree)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree (in practice, only the part containing the \code{<value>} to be read).}
  }

\value{
  The function returns a float based on the numeric value read.
}

\examples{
tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.0.0"), parent=tree)

root<-getNodeSet(tree, "/xmcda:XMCDA")

val<-newXMLNode("value", parent=root[[1]], namespace=c())

newXMLNode("real",3.14,parent=val, namespace=c())

y<-getNodeSet(tree,"//value")

x<-getNumericValue(y)
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
