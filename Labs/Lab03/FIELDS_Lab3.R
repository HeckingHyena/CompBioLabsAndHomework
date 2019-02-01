#Lab step 3 initializing supplies
chips <- 5
guests <- 8
#Lab step #5, chip consumption
eat <- .4
#Lab step #7, leftovers
left <- (chips - ((guests + 1) * eat))

#Part 2, Rankings
self <- c(7, 6, 5, 1, 2, 3, 4)
penny <- c(5, 7, 6, 3, 1, 2, 4)
jenny <- c(4, 3, 2, 7, 6, 5, 1)
lenny <- c(1, 7, 3, 4, 6, 5, 2)
stewie <- c(6, 7, 5, 4, 3, 1, 2)
#Step #9: Penny and Lenny's 4th movie rating
pennyIV <- penny[4]
lennyIV <- lenny[4]
#Step 10: All ratings
ratings <- cbind(self, penny, jenny, lenny, stewie)
str(pennyIV)
str(penny)
str(ratings)
#The differences between these structures is that penny!V is one value, penny is a row of all 7, and ratings is a grid of all of the added vectors
frame <- data.frame(ratings)
#Similarities: they both have the same values in the same places, and are returned the same
#differences: The structure of the frame is easier to read and returned as a frame rather than a string of numbers. Frame is a list
#Step 14: Creating a row for names
names <- c("I", "II", "III", "IV", "V", "VI", "VII")
row.names(frame) <- names
#Accessing specific numbers
frame[3,]
frame[,4]
frame[5,1]
frame[2,2]
frame[4:6,]
frame[c(2,5,7),]
frame[c(4,6),c(2,3,5)]

#Step 23: Switching ranks
lennyII <- 7
frame[2,4] <- frame[5,4]
frame[5,4] <- lennyII

#accessing values
frame["III","penny"]

#Switching Lenny Back
lennyII <- frame["II", "lenny"]
frame["II","lenny"] <- frame["V","lenny"]
frame["V","lenny"] <- lennyII

#Switching AGAIN
lennyII <- frame$lenny[2]
frame$lenny[2] <- frame$lenny[5]
frame$lenny[5] <- lennyII