#' Find the greatest common divisor of two numbers.
#' 
#' @param a A number.
#' @param b A number.
#' @return Euclidean distance of `a` and `b`.
#' @examples
#' euclidean(123612, 13892347912)
#' euclidean(100, 1000)
#' @references \url("https://en.wikipedia.org/wiki/Euclidean_algorithm")
euclidean <-
function(a,b) {
  if(missing(a) || missing(b)) {
    return("Param missing")
  }
  if (!is.numeric(a)) {
    return("Invalid param type. 'a' should be a number")
  }
  if (!is.numeric(b)) {
    return("Invalid param type. 'b' should be a number")
  }

  remainder <- integer(0);
  while ((a %% b) > 0)  {
    remainder = a %% b
    a = b
    b = remainder
  }
  return(b)
}
