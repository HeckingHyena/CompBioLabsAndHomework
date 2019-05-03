#Lab 11: Data Manipulation 
#Noah Fields

library("dplyr")

#Part 1: Reading in Data
densityData <- read.csv("GlobalWoodDensityDatabase.csv", stringsAsFactors = F)

#Part 2: Cleaning the Data
densityData <- na.omit(densityData)

dData = data.frame(matrix(vector(), 0, 3, dimnames=list(c(), c("Binomial", "Family", "MeanDensity"))), stringsAsFactors=F)

#Didn't work
#for( u in 1:length(densityData)){
  
#}
dData <- summarize(group_by( densityData, Binomial, Family), MeanDensity = mean(Wood.density..g.cm.3...oven.dry.mass.fresh.volume))

#Sorting by density in family
fData <- data.frame(matrix(vector(), 0, 2, dimnames=list(c(), c("Family", "MeanDensity"))), stringsAsFactors=F)

fData <- summarize(group_by( densityData, Family), MeanDensity = mean(Wood.density..g.cm.3...oven.dry.mass.fresh.volume))
fData <- arrange(fData, fData$MeanDensity)

head(fData)
#Plotting
library("ggplot2")

ggplot( dData ) + geom_boxplot(aes(x=head(fData$Family), y=(dData&MeanDensity)))