power <- read.csv("C:/Users/ssherida/Desktop/R Coursera/household_power_consumption.txt", sep=";")

power$Date <- as.Date(power$Date, format = "%d/%m/%Y")
power <- subset(power, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
power$datetime <- strptime(paste(power$Date, power$Time), "%Y-%m-%d %H:%M:%S")

gap<-as.numeric(power$Global_active_power)

hist(gap, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")

dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

