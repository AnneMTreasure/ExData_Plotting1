

setwd("/Users/anne/Documents/A_Daily_sync_work_home/DataScience/Coursera/DataScienceSpecialisation/Course4_ExploratoryDataAnalysis/Week1/Assignment")

## read in data
datain <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings='?')

## subset dates
Data <- datain[datain$Date=='1/2/2007' | datain$Date=='2/2/2007',]

## deal with date and time format
library(lubridate)
Data$DateTime <- dmy(Data$Date) + hms(Data$Time)


## PLOT 3

png(file = "plot3.png")

plot(Data$DateTime, Data$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l", col = "black")
lines(Data$DateTime, Data$Sub_metering_2, col = "red")
lines(Data$DateTime, Data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)

dev.off()
