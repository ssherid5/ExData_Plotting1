plot(power$datetime, as.numeric(as.character(power$Global_active_power)),type="l",xlab="",ylab="Global Active Power (kilowatts)")

dev.copy(png,file="plot2.png",height=480,width=480)
dev.off