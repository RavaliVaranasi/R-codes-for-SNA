#Loading SNA(Social Network Analysis) library
library(sna)

#Parameters required for graph: ; 
N=10        #N(number of vertices)
plink = 0.2 #plink(Probability of link between any two vertices)
#sna::rgraph() -- Generate Bernouli random graphs
#2nd Argument '1' - Number of graphs to be generated
#4th Argument 'graph' - for the graph to be undirected
#5th Argument 'FALSE' -  for the possibility of loops
graph = rgraph(N,1,plink,"graph",FALSE)
graph
