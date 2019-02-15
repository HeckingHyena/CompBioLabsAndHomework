#Lab 4: For Loops
#Noah Fields

#PART 1

#Step 1: Printing Hi
timesHi <- 1:10
for (x in timesHi){
  print("hi")
}

#Step 2: Allowance
bank <- 10
allowance <- 5
gumPrice <- 1.34
weeks <- 1:8
total <- rep(0, length(weeks))
for(i in weeks){
  total[i] <- (bank + weeks[i] * (allowance - gumPrice *2))
}
print( total )

#Step 3: Population Decline
initial <- 2000
rate <- .95
years <- 1:7
population <- rep(0, length(years))
for(p in years){
  population[p] <- (initial * rate * years[p])
}
print( population )

#Step 4: Logistic
start <- 2500
growth <- .8
cap <- 10000
time <- 1:12
abundance <- rep(0, length(time))
abundance[1] <- start
for(l in 2:length(time)){
  abundance[l] <- abundance[l-1] + ( growth * abundance[l-1] * (cap - abundance[l-1])/cap)
}
print( abundance )


#PART 2

#Step 1: initial
vec <- rep(0, 18)
three <- 1:18
for(i in seq){
  vec[i] <- 3 * three[i]
}
print(vec)

#Step 2: Fibbonacci
fib <- rep(0, 20)
fib[2] <- 1
len <- length(fib)
for(i in 3:len){
  fib[i] <- fib[i - 1] + fib[i - 2]
}
print(fib)
