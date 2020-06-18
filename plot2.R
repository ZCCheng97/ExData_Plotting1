table <- read.table("household_power_consumption.txt", sep = ";", header = T, stringsAsFactors = F)
newtab <- table[table$Date %in% c("1/2/2007","2/2/2007"),]
newtab$datetime <- paste(newtab$Date,newtab$Time)
newtab$Date <- strptime(newtab$datetime,format = "%d/%m/%Y %H:%M:%S")
exam <- na.omit(as.numeric(newtab$Global_active_power))

png("plot2.png")
plot(x= newtab$Date, y = exam, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()