## Getting full dataset
datafile <- "./data/household_power_consumption.txt"
data <- read.table(datafile, header = TRUE, sep = ";",stringsAsFactors = FALSE, na.strings = "?", dec = ".")

## Subsetting the data
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

## clear full dataset
rm(data)

datetime <- strptime(paste(subsetData$Date, subsetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
