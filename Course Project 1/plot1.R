
#Receive TXT file with necessary info
dataFile <- "./household_power_consumption.txt"

# Variable receive values
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#We will only be using data from the dates 2007-02-01 and 2007-02-02.
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#######Coding script
globalActivePower <- as.numeric(subSetData$Global_active_power)

#2 - Create Plot and export to "plot1.png"
png("plot1.png", width=480, height=480)

#3 - plot1 output (info)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

#Finish
dev.off()