#Lab 5: If Else
#Noah Fields

setwd("~/comp_bio/CompBioLabsAndHomework/Labs/Lab05")
#PART 1

#Step 1: Practice
x <- 7
if (x > 5) {
  print("The integer is greater than 5")
} else{
    print("The integer is less than 5")
}

#Step 2: Vector file
vec <- Vector1
myVec <- Vector1$x
for (i in 1:length(myVec)){
  if (myVec[i] < 0){
    myVec[i] <- NA
  }
}
#Replacing NA with 0
myVec[which(is.na(myVec))] <- 0

#Counting between 50 and 100
count <- 0
for(c in 1:length(myVec)){
  if(myVec[c] <= 100 & myVec[c] >= 50){
    count <- count + 1
  }
}
print(count)

#Making a vector of values between 50 and 100 
FiftyToOneHundred <- rep(0, count)
len <- 0
for(y in 1:length(myVec)){
  if(myVec[y] <= 100 & myVec[y] >= 50){
    len <- len + 1
    FiftyToOneHundred[len] <- myVec[y]
  }
}

#Saving the file
write.csv(x = FiftyToOneHundred, file = "FiftyToOneHundred.csv")

#Step 3: CO2

#myMat <- cbind(CO2_data_cut_paste$Year, CO2_data_cut_paste$Gas)
carbonData <- CO2_data_cut_paste

#Non-zero gas year
gas <- carbonData$Gas
yr <- which( gas > 0 )
carbonData$Year[yr[1]]

#Total emissions between 200 and 300 million
emis <- carbonData$Total
years <- which( emis > 200 & emis < 300)
carbonData$Year[years]

#PART 2

totalGenerations <- 1000
initPrey <- 100 	# initial prey abundance at time t = 1
initPred <- 10		# initial predator abundance at time t = 1
a <- 0.01 		# attack rate
r <- 0.2 		# growth rate of prey
m <- 0.05 		# mortality rate of predators
k <- 0.1 		# conversion constant of prey into predators

#Creating the vectost to store the populations over time
prey <- rep(0, totalGenerations)
prey[1] <- initPrey
pred <- rep(0, totalGenerations)
pred[1] <- initPred
time <- 1:totalGenerations

#Running the equiation loop
for( t in 2:totalGenerations ){
  prey[t] <- prey[t-1] + (r * prey[t-1]) - (a * (prey[t -1] * pred[t-1])) #Prey abundance equation
  pred[t] <- pred[t-1] + (k * a * prey[t-1] * pred[t-1]) - (m * pred[t-1]) #Predator abundance equation
  #Not allowing negative numbers
  if( prey[t] < 0){
    prey[t] <- 0
  }
  if( pred[t] < 0){
    pred[t] <- 0
  }
}

#Plotting the data
plot(time, prey)
lines(time, pred)

#Making a matrix of the results
myResults <- cbind(time, prey, pred)
colnames(myResults) <- c("Timestep", "PreyAbundance", "PredatorAbundance")


