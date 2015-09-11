
#Receive TXT file with necessary info
dataFile <- "./household_power_consumption.txt"

# Variable receive values
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#We will only be using data from the dates 2007-02-01 and 2007-02-02.
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


################## Coding

#1 - convert the Date and Time variables to datetime class in R using the strptime() 
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#2 - Receiving data in variable globalActivePower
globalActivePower <- as.numeric(subSetData$Global_active_power)


#3 - Create Plot and export to "plot2.png"
png("plot2.png", width=480, height=480)

#4 - plot2 output (info)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

#Finish
dev.off()


