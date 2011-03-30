library(RXMCDA)

tree <- xmlTreeParse(system.file("data","testFile.xml",package="RXMCDA"), useInternalNodes=TRUE)

critIDs <- getCriteriaIDs(tree)

comps <- getCriteriaComparisons(tree, critIDs[[1]])

stopifnot(all.equal(dim(comps[[1]]), c(2,3)))


