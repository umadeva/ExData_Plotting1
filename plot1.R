data <- read.table("household_power_consumption.txt",sep = ";", header = TRUE,na.strings = "?")
subsetData <- subset(data, data$Date %in% c("1/2/2007","2/2/2007"))
subsetData$Date <- as.Date(subsetData$Date, format="%d/%m/%Y")
png("plot1.png",width=480,height=480)
hist(subsetData$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.off()