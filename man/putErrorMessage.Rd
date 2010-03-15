\name{putErrorMessage}
\alias{putErrorMessage}

\title{Put an error message}

\description{Puts an error message in a \code{<methodMessages>} tag of an XML tree written according to the \code{XMCDA} standard.}

\usage{
putErrorMessage(tree, errorMessage, name = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{errorMessage}{A string containing the text of the error message.}
  \item{name}{A string containing the specific \code{name} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
  
  \item{status}{Either OK if the \code{<errorMessage>} tag could be correctly put, or the description of the error.}
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
