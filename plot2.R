datafile <- read.table(file="household_power_consumption.txt", sep = ";", header=T)
filter_data <- datafile[datafile$Date == "1/2/2007" | datafile$Date == "2/2/2007",]
t <- paste(filter_data$Date, filter_data$Time)
t <- strptime(t, "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(as.numeric(t), as.numeric(filter_data$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
