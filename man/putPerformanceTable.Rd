\name{putPerformanceTable}
\alias{putPerformanceTable}

\title{Put a performance table in the XMCDA tree}

\description{Puts a performance table (\code{performanceTable} tag) in an XML tree written according to the \code{XMCDA} standard.}

\usage{
putPerformanceTable(tree, performanceTable, mcdaConcept = NULL)
}

\arguments{
  \item{tree}{Object containing the \code{XMCDA} XML tree.}
  \item{performanceTable}{A matrix representing the performance table (the lines are named according to the alternatives' IDs, the columns are named according to the criteria IDs).}
  \item{mcdaConcept}{A string containing the specific \code{mcdaConcept} attribute which should be written.}
  }

\value{
  The function returns a list structured as follows: 
  
  \item{status}{Either OK if the \code{<performanceTable>} tag could be correctly put, or the description of the error.}
}

\examples{
performanceTable <- rbind(c(1,2,3),c(4,5,6))

rownames(performanceTable) <- c("x","y")

colnames(performanceTable) <- c("g1","g2","g3")

tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", 
           namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", 
           "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.1.0"), 
           parent=tree)

putPerformanceTable(tree,performanceTable)
}

\keyword{methods}
