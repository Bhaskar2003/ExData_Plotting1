power<-read.table("household_power_consumption.txt",header=TRUE, sep=";")
required<- subset(power, Date=="1/2/2007" | Date=="2/2/2007")
required$Global_active_power=as.numeric(required$Global_active_power)    #converting into numeric from character
required$dateTime=paste(required$Date,required$Time)
required$dateTime=strptime(required$dateTime, format = "%d/%m/%Y %H:%M:%S")
plot(required$dateTime, required$Global_active_power, type="l", xlab = "", ylab = "Global Acive Power (kilowatts)")
dev.copy(png, file="plot2.png")
dev.off()
