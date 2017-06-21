## Getting full dataset
datafile <- "./data/household_power_consumption.txt"
data <- read.table(datafile, header = TRUE, sep = ";",stringsAsFactors = FALSE, na.strings = "?", dec = ".")

## Subsetting the data
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

## clear full dataset
rm(data)


globalActivePower <- as.numeric(subsetData$Global_active_power)

## open a png device
png("Plot1.png", width=480, height=480)

## Plot1
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

## device off
dev.off()
