
# lab3 Advanced Programming in R

<!-- badges: start -->

[![R-CMD-check](https://github.com/Monmo538/lab3/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Monmo538/lab3/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

In this R package we will implement two famous algorithms, the Euclidian
algorithm to find the greatest common divisor of two integers and
Dijkstra’s algorithm which is calculating the shortest path in a graph.

## Installation

You can install the development version of lab3 from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Monmo538/lab3")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(lab3)

euclidean(123612, 13892347912)
#> [1] 4
euclidean(100, 1000)
#> [1] 100


wiki_graph <-
  data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6),
             v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5),
             w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))

dijkstra(wiki_graph, 1)
#> [1]  0  7  9 20 20 11

dijkstra(wiki_graph, 3)
#> [1]  9 10  0 11 11  2
```
