#Lab 8: Functions
#Noah Fields

#Creating a function of the Code from Lab 4
myGrowth <- function(r, k, gen, pop){
  generations <- 1:gen
  abundance <- rep(0, length(generations))
  abundance[1] <- pop
  for(l in 2:length(generations)){
    abundance[l] <- abundance[l-1] + ( r * abundance[l-1] * (k - abundance[l-1])/k)
  }
  plot(generations, abundance)
  myMatrix <- cbind(generations, abundance)
  return( myMatrix )
}

data <- myGrowth(.8, 10000, 12, 2500)
colnames(data) <- c("time", "abundance")
write.csv(x = data, file = "growth_data")