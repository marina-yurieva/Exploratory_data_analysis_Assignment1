datafile <- read.table(file="household_power_consumption.txt", sep = ";", header=T)
filter_data <- datafile[datafile$Date == "1/2/2007" | datafile$Date == "2/2/2007",]
png("plot1.png", width=480, height=480)
hist(as.numeric(filter_data$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
