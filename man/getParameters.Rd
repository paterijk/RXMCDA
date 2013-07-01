\name{getParameters}
\alias{getParameters}

\title{Get parameters}

\description{Gets the parameters defined in the \code{<methodParameters>} tag from an XML tree written according to the \code{XMCDA} standard.}

\usage{
getParameters(tree, name = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{name}{A string containing the specific \code{name} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
     
  \item{--}{The first elements contain the parameters which have been read in each \code{parameter} tag (either a \code{<label>}, \code{<real>} or \code{<integer>}).
  These elements are named according to the \code{name} attribute if it can be found.}
  
  \item{status}{Either OK if all the \code{<methodParameters>} tags could be correctly read, or the description of the error.}
}

\examples{
tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", 
           namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", 
           "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.0.0"), 
           parent=tree)

root<-getNodeSet(tree, "/xmcda:XMCDA")

parameters<-newXMLNode("methodParameters", parent=root[[1]], namespace=c())

parameter <- newXMLNode("parameter",attrs = c(name="numIt"), 
                        parent=parameters, namespace=c())

value <- newXMLNode("value", parent=parameter, namespace=c())

newXMLNode("integer", value=3, parent=value, namespace=c())

y<-getNodeSet(tree,"//methodParameters")

x<-getParameters(y[[1]])
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
