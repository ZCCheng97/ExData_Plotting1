table <- read.table("household_power_consumption.txt", sep = ";", header = T, stringsAsFactors = F)
newtab <- table[table$Date %in% c("1/2/2007","2/2/2007"),]
exam <- na.omit(as.numeric(newtab$Global_active_power))

png("plot1.png")
hist(exam,main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "Red", breaks = seq(0, 12, by = 0.5),xlim = c(0,6), ylim = c(0,1200), yaxt = "n")
axis(2, at=seq(0, 1200, by = 200), labels=seq(0, 1200, by = 200))
dev.off()