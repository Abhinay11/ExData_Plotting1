dataFile <- "/Users/abhinaykorukonda/Desktop/CourseProject1/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalactivePower <- as.numeric(subdata$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalactivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off() 

