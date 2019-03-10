

#set the working directory
setwd("C:/Users/david/Desktop/datascience/src/ExploratoryDataAnalysisW1")
#read the input file
InputData<-read.csv2("./household_power_consumption.txt")

#selection of the data
selectedData <- InputData[InputData$Date %in% c("1/2/2007","2/2/2007") ,]

#conversion to numeric
globalActivePower <- as.numeric(selectedData$Global_active_power)

dateTime <- strptime(paste(selectedData$Date, selectedData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width=480, height=480)

#graph settings
plot(dateTime,globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

