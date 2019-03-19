par(mfrow=c(2,2))

with(power,{
  plot(power$datetime, as.numeric(as.character(power$Global_active_power)),type="l",xlab="",ylab="Global Active Power (kilowatts)")
  plot(power$datetime, as.numeric(as.character(power$Voltage)),type="l",xlab="datetime",ylab="Voltage")
  plot(power$datetime,power$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
  with(power,lines(datetime,as.numeric(as.character(Sub_metering_1))))
  with(power,lines(datetime,as.numeric(as.character(Sub_metering_2)),col="red"))
  with(power,lines(datetime,as.numeric(as.character(Sub_metering_3)),col="blue"))
  legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  plot(power$Time,as.numeric(as.character(power$Global_active_power)),type="l",xlab="datetime",ylab="Global_reactive_power")
})

dev.copy(png,file="plot4.png",height=480,width=480)
dev.off