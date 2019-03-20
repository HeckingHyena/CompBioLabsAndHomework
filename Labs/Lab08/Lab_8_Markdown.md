## Lab 8 Markdown
### Lab 8: Functions
#### Noah Fields

##### Creating a function of the Code from Lab 4
##### This code creates a logistical function of population growth with the inputs of growth rate, carrying capacity, number of generations, and initial population
    myGrowth <- function(r, k, gen, pop){
      generations <- 1:gen
      abundance <- rep(0, length(generations))
      abundance[1] <- pop
      for(l in 2:length(generations)){
        abundance[l] <- abundance[l-1] + ( r * abundance[l-1] * (k - abundance[l-1])/k)
      }
##### This part of the function plots the population per generation and makes a matrix
      plot(generations, abundance)
          myMatrix <- cbind(generations, abundance)
          return( myMatrix )
    
    }
##### This part of the code is testing an example of the data and writing it to a separate data file
    data <- myGrowth(.8, 10000, 12, 2500)
    colnames(data) <- c("time", "abundance")
    write.csv(x = data, file = "growth_data")

