#Loading the libraries
library(igraph)
library(Matrix)

#HITS Algorithm to find authority scores and Hub scores
HITS<-function(g,k){ 
  adj <- get.adjacency(g) 
  nodes <- dim(adj)[1] 
  auth <- c(rep(1,nodes)) 
  hub <- c(rep(1,nodes)) 
  for(i in 1:k){ 
    t_adj <- t(adj) 
    auth <- t_adj%*%hub 
    hub <- adj%*%auth 
    sum_sq_auth <- sum(auth*auth) 
    sum_sq_hub <- sum(hub*hub) 
    auth <- auth/sqrt(sum_sq_auth) 
    hub <- hub/sqrt(sum_sq_hub) 
  } 
  result <- c(auth,hub)   
  return(result) 
}

#Forming a matrix A
A <- matrix(c(0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 
              0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0),
            nrow=6, ncol=6, byrow=TRUE)
#Forming a igraph with A matrix
G <- graph.adjacency(A, mode=c("directed"), weighted=NULL)
#Setting the parameter kmax as 6
kmax <- 6

#Passing our graph and parameter to run HITS algorithm
opt<-HITS(G,kmax)
#Displaying the scores
opt
