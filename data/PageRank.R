#Loading the library igrpah
library(igraph)

#Generating a random directed graph
g<-random.graph.game(20,5/20,directed = TRUE)
#Getting Page rank of each node in vector form
page.rank(g)$vector

#Generating a random star graph with 10 nodes
g2<-graph.star(10)
#page rank
page.rank(g2)$vector

#plotting both the graph
plot(g,vertex.size = 20,edge.color = 'black',edge.arrow.size=.2)
plot(g2,vertex.size = 20,edge.color = 'black',edge.arrow.size=.2)
