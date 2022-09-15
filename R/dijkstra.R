#' This function takes a graph and an initial node and calculates the shortest path from the initial node to every other node in the graph.
#'
#'
#' @param graph R data frame.
#' @param init_node A number.
#' @return The shortest path from the `init_node` to every other node in the `graph`.
#'
#' @source \url {"https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm"}
#'
#' @examples
#' dijkstra(graph, 1)
#' dijkstra(graph, 3)
dijkstra <-
function(graph, init_node) {
  if(missing(graph) || missing(init_node)) {
    return("Param missing")
  }
  if (!is.data.frame(graph)) {
    return("Invalid param type. 'graph' should be a data frame.")
  }
  if (!is.numeric(init_node)) {
    return("Invalid param type. 'init_node' should be a number")
  }

  len <- length(unique(graph$v1))
  vectors <- unique(graph$v1)

  visited <- rep(FALSE, len)
  parent <- rep("-1", len)
  value <- rep(Inf, len)

  names(visited) <- vectors
  names(parent) <- vectors
  names(value) <- vectors


  currentNode <- init_node
  value[currentNode] <- 0


  while (!is.na(as.logical( match(F, visited)))) {
    tempGraph <- graph[graph$v1 == currentNode, ]

    visitedIndex <- which(visited == T)
    if (length(visitedIndex)  > 0) {
      visitedVector <- vectors[visitedIndex]
      tempGraph <- tempGraph[tempGraph$v2  %in% nonVisitedIndex, ]
    }


    visited[currentNode] <- T
    if (nrow(tempGraph) > 0) {
      for (i in 1:nrow(tempGraph)) {
        tempValue = as.numeric(value[currentNode]) + as.numeric(tempGraph[i,3])
        if ( tempValue <  value[tempGraph[i,2]]) {
          value[tempGraph[i,2]] = tempValue
          parent[tempGraph[i,2]] = currentNode
        }
      }

    }

    nonVisitedIndex <- which(visited == F)
    if (length(nonVisitedIndex) == 0) {
      break
    }
    minValue <- min(value[nonVisitedIndex])
    currentNode <- vectors[which(value == minValue) ]

    if (length(currentNode) > 1) {
      for (k in currentNode) {
        if (visited[k] == F) {
          currentNode <- k
          break
        }
      }
    }
  }

  return(as.numeric(value) )
}
