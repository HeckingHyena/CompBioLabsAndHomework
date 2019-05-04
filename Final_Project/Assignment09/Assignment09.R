# Noah Fields
# Final Project
#Assignment 9

library(tidyverse)
library(ggplot2)
library(tidyr)

figOne <- read.csv("Takano_Time1.csv", stringsAsFactors = F)
timeData <- read.csv("Takano_Efficiency4+2.csv", stringsAsFactors = F)

#GRAPHING TIME


#Isolating the Data I Want
df <- data.frame(timeData$trial, timeData$Demo_time, timeData$OBS_time)
colnames(df) <- c("Trial", "Demonstrator_Time", "Observer_Time")

#Plotting the Time Data Per Day

ggplot(df, aes(x = Trial, y = Time)) + 
  geom_line(aes(y = Demonstrator_Time, col = "Demonstrator")) + 
  geom_line(aes(y = Observer_Time, col = "Observer")) + ggtitle("Time by Day/Trial")


#GRAPHING REARING
rearingData <- read.csv("Takano_Rearing5.csv")

ggplot(rearingData, aes(y = X5th, x = Condition, color = Condition)) + geom_boxplot() + ggtitle("Rearing Graph") + ylab("Avg. Rearing Per Arm")


#ANOVA OF WEEK 1+5 FOR ALL GROUPS

#1st week
summary(aov(X1st ~ Condition, data = figOne))
#5th week
summary(aov(X5th ~ Condition, data = figOne))


#T-TEST OF WEEK 1 FOR OBSERVER AND DEMONSTRATOR

ttestData <- figOne[1:28, ]

#1st week
t.test(X1st~Condition, data = ttestData)
#5th week
t.test(X5th~Condition, data = ttestData)
