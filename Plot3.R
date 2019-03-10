#set the working directory
setwd("C:/Users/david/Desktop/datascience/src/ExploratoryDataAnalysisW1")
#read the input file
InputData<-read.csv2("./household_power_consumption.txt")

#selection of the data
selectedData <- InputData[InputData$Date %in% c("1/2/2007","2/2/2007") ,]

#conversion to numeric
subMetering1 <- as.numeric(selectedData$Sub_metering_1)
subMetering2 <- as.numeric(selectedData$Sub_metering_2)
subMetering3 <- as.numeric(selectedData$Sub_metering_3)

dateTime <- strptime(paste(selectedData$Date, selectedData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot3.png", width=480, height=480)

#graph settings
plot(dateTime,subMetering1, type="l", xlab="", ylab="Energy sub metering")

lines(dateTime,subMetering2, type="l", col="red")
lines(dateTime,subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()