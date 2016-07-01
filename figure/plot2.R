

setwd("/Users/anne/Documents/A_Daily_sync_work_home/DataScience/Coursera/DataScienceSpecialisation/Course4_ExploratoryDataAnalysis/Week1/Assignment")

## read in data
datain <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings='?')

## subset dates
Data <- datain[datain$Date=='1/2/2007' | datain$Date=='2/2/2007',]

## deal with date and time format
library(lubridate)
Data$DateTime <- dmy(Data$Date) + hms(Data$Time)


## PLOT 2

png(file = "plot2.png")

plot(Data$DateTime, Data$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")

dev.off()
