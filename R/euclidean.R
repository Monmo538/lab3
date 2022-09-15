#' Find the greatest common divisor of two numbers.
#'
#' @param a A number.
#' @param b A number.
#' @return Euclidean distance of `a` and `b`
#'
#' @source \url{http://en.wikipedia.org/wiki/Euclidean_algorithm}
#' @export
#' @examples
#' euclidean(12, 12)
#' euclidean(100, 1000)
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
