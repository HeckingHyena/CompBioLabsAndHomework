#Lab 7: Functions
#Noah Fields

#Calculating area
myArea <- function(b = defaultVal, h = defaultVal) {
  results <- .5 * b * h		
  return(results)
}
myArea(10, 9)

#Calculating absolute values
myAbs <- function(ab = defaultVal) {
  if (ab < 0) {
    ab <- ab * -1
  }
  return(ab)
}
myAbs(5)
myAbs(-2.3)

#Fibbonacci
myFib <- function(n = defaultVal, start = defaultVal){
  if(start == 0){
    fib <- rep(0, n)
    fib[2] <- 1
    len <- length(fib)
    for(i in 3:len){
      fib[i] <- fib[i - 1] + fib[i - 2]
    }
  }else{
    fib <- rep(0, n)
    fib[1] <- 1
    fib[2] <- 1
    len <- length(fib)
    for(i in 3:len){
      fib[i] <- fib[i - 1] + fib[i - 2]
    }
  }
  return(fib)
}
myFib(10, 0)

#Square the difference
squareDiff <- function(x = defaultVal, y = defaultVal) {
  sqr <- (x - y) ^2
  return(sqr)
}
squareDiff(3, 9)
vec <- c(2, 4, 6)
squareDiff(vec, 4)

#Making an Average Function
myAvg <- function(vect) {
  average <- sum(vect) / length(vect)
  return(average)
}
myAvg(vec)
dat <- DataForLab07$x
myAvg(dat)

#Mean Sum of Squares
sumSquares <- function(sq = defaultVal) {
  sum(squareDiff(myAvg(sq), sq))
}
sumSquares(vec)