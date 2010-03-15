\name{putLogMessage}
\alias{putLogMessage}

\title{Put a log message}

\description{Puts an log message in a \code{<methodMessages>} tag of an XML tree written according to the \code{XMCDA} standard.}

\usage{
putLogMessage(tree, logMessage, name = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{logMessage}{A string containing the text of the log message.}
  \item{name}{A string containing the specific \code{name} attribute which should be searched for.}
  }

\value{
  The function returns a list structured as follows: 
  
  \item{status}{Either OK if the \code{<logMessage>} tag could be correctly put, or the description of the error.}
}

\keyword{methods}
%\keyword{ ~~ other possible keyword(s)}
