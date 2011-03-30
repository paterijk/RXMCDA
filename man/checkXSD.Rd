\name{checkXSD}
\alias{checkXSD}

\title{XMCDA tree validation.}

\description{Checks if an XML tree is valid according to an XML schema.}

\usage{
checkXSD(tree)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  }

\value{
  The function returns 1 if the XML tree is validated by the XMCDA schema (currently XMCDA-2.*), else it returns 0.
}

\examples{
tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.1.0"), parent=tree)

root<-getNodeSet(tree, "/xmcda:XMCDA")

criteria<-newXMLNode("criteria", parent=root[[1]], namespace=c())

criterion<-newXMLNode("criterion",attrs = c(id="g1"), parent=criteria, namespace=c())

y<-checkXSD(tree)
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
