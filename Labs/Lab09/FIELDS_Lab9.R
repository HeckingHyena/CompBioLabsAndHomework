#Lab 9: Parsing
#Noah Fields

camData <- read.csv("Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv", stringsAsFactors = F)

#Testing for Problem 1
smallVec <- camData$DateTime[1:5]
smallVec <- strptime(smallVec, format = "%d/%m/%Y %H:%M", tz = "")

#Problem 1
camData$DateTime <- strptime(camData$DateTime, format = "%d/%m/%Y %H:%M", tz = "")

#Problem 2 Attempts
#Trying a For Loop, didn't know what to do to fix the previous so I decided to start from scratch in 1
for (x in length(camData$DateTime)) {
  if(camData$DateTime[x])
}
#Redoing the code from 1 into a For Loop, can't get it to work, replacement length error
nchar(camData$DateTime[1])
testList <- camData$DateTime[493:502]
for (x in length(camData$DateTime)) {
  if(nchar(camData$DateTime[x]) < 15){
    camData$DateTime[x] <- strptime(camData$DateTime[x], format = "%d/%m/%y %H:%M", tz = "")
  } else{
    camData$DateTime[x] <- strptime(camData$DateTime[x], format = "%d/%m/%Y %H:%M", tz = "")
  }
}