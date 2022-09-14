#' Find the greatest common divisor of two numbers.
#' 
#' @param a A number.
#' @param b A number.
#' @return Euclidean distance of `a` and `b`.
#' @examples
#' euclidean(123612, 13892347912)
#' euclidean(100, 1000)
#' @references \url("https://en.wikipedia.org/wiki/Euclidean_algorithm")s
euclidean <-
function(a,b) {
  remainder <- integer(0);
  while ((a %% b) > 0)  {
    remainder = a %% b
    a = b
    b = remainder
  }
  return(b)
}
