\name{putMessage}
\alias{putMessage}

\title{Put a message}

\description{Puts an message in a \code{<methodMessages>} tag of an XML tree written according to the \code{XMCDA} standard.}

\usage{
putMessage(tree, message, name = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{message}{A string containing the text of the log message.}
  \item{name}{A string containing the specific \code{name} attribute which should be put.}
  }

\value{
  The function returns a list structured as follows: 
  
  \item{status}{Either OK if the \code{<message>} tag could be correctly put, or the description of the error.}
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
