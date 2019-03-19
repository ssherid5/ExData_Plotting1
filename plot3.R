plot(power$datetime,power$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
with(power,lines(datetime,as.numeric(as.character(Sub_metering_1))))
with(power,lines(datetime,as.numeric(as.character(Sub_metering_2)),col="red"))
with(power,lines(datetime,as.numeric(as.character(Sub_metering_3)),col="blue"))
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.copy(png,file="plot3.png",height=480,width=480)
dev.off