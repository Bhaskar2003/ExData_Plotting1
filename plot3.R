power<-read.table("household_power_consumption.txt",header=TRUE, sep=";")
required<- subset(power, Date=="1/2/2007" | Date=="2/2/2007")
required$Global_active_power=as.numeric(required$Global_active_power)
required$dateTime=paste(required$Date,required$Time)
required$dateTime=strptime(required$dateTime, format = "%d/%m/%Y %H:%M:%S")
                                        
plot(required$dateTime, required$Sub_metering_1, type="l", ylab = "Energy sub metering", xlab = "")
lines(required$dateTime,  required$Sub_metering_2, col="red")
lines(required$dateTime,  required$Sub_metering_3,  col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("sub_metering_1", "sub_metering_2", "sub_metering_3"))



dev.copy(png, file="plot3.png")
dev.off()