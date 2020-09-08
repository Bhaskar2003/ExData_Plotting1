power<-read.table("household_power_consumption.txt",header=TRUE, sep=";")
required<- subset(power, Date=="1/2/2007" | Date=="2/2/2007")
required$Global_active_power=as.numeric(required$Global_active_power)    #converting into numeric from character
hist(required$Global_active_power, main="Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png")
dev.off()

#=======================================================================

