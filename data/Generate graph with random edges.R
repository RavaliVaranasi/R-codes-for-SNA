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

#To get the degree of all nodes
degree(graph)

#gden is to find the density of the graph
gden(graph,mode='graph')

#is.connected is used for strict connectedness
is.connected(graph)
#to get connectedness of graph, If its 1, then graph is fully connected
connectedness(graph)
#checks whether the give node is isolated or not
is.isolate(graph,4)

#Give betweeness of  each node
betweenness(graph)
#Path lengths/geodesic distances can be calculated
geo = geodist(graph)
geo$gdist
#Compute metrics over a local neighborhood (gets the sub-graph)
ego.extract(graph,6)

#Computes the closeness centrality of complete graph
closeness(graph)
#sub-graph (node-6) of main graph is taken to graph1
graph1 = ego.extract(graph,6)
graph1
#Closeness centrality for sub-graph(node-6) 
closeness(graph1)
