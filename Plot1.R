

#set the working directory
setwd("C:/Users/david/Desktop/datascience/src/ExploratoryDataAnalysisW1")
#read the input file
InputData<-read.csv2("./household_power_consumption.txt")

#selection of the data
selectedData <- InputData[InputData$Date %in% c("1/2/2007","2/2/2007") ,]

#conversion to numeric
globalActivePower <- as.numeric(selectedData$Global_active_power)

png("plot1.png", width=480, height=480)

#graph settings
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()


