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

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
