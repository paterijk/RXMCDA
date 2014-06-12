library(RXMCDA)

tree = newXMLDoc()

newXMLNode("xmcda:XMCDA", namespace = c("xsi" = "http://www.w3.org/2001/XMLSchema-instance", "xmcda" = "http://www.decision-deck.org/2009/XMCDA-2.0.0"), parent=tree)

root<-getNodeSet(tree, "/xmcda:XMCDA")

parameters<-newXMLNode("methodParameters", parent=root[[1]], namespace=c())

parameter <- newXMLNode("parameter",attrs = c(name="numIt"), parent=parameters, namespace=c())

value <- newXMLNode("value", parent=parameter, namespace=c())

newXMLNode("integer", value=3, parent=value, namespace=c())

parameter <- newXMLNode("parameter",attrs = c(name="trueFalseInt"), parent=parameters, namespace=c())

value <- newXMLNode("value", parent=parameter, namespace=c())

newXMLNode("boolean", value=1, parent=value, namespace=c())

y<-getNodeSet(tree,"//methodParameters")

stopifnot(getParameters(y[[1]])$numIt == 3)

stopifnot(getParameters(y[[1]])$trueFalseInt == 1)


