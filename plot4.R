#Reading and Subseting
energyusage=read.csv("household_power_consumption.txt",sep=";",na.string="?")
energyusage$Date=as.Date(energyusage$Date, "%d/%m/%Y")
energyusage1=energyusage[energyusage$Date=="2007-02-01"|energyusage$Date=="2007-02-02",]

#Ploting plot4
png(filename="plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(strptime(paste(energyusage1$Date,energyusage1$Time), "%Y-%m-%d %H:%M:%S"),energyusage1$Global_active_power,type="l",ylab="Global Active Power",xlab="")
plot(strptime(paste(energyusage1$Date,energyusage1$Time), "%Y-%m-%d %H:%M:%S"),energyusage1$Voltage,type="l",ylab="Voltage",xlab="datetime")

plot(strptime(paste(energyusage1$Date,energyusage1$Time), "%Y-%m-%d %H:%M:%S"),energyusage1$Sub_metering_1,type="n",ylab="Energy Sub metering",xlab="")
points(strptime(paste(energyusage1$Date,energyusage1$Time), "%Y-%m-%d %H:%M:%S"),energyusage1$Sub_metering_1,type="l")
points(strptime(paste(energyusage1$Date,energyusage1$Time), "%Y-%m-%d %H:%M:%S"),energyusage1$Sub_metering_2,type="l",col="red")
points(strptime(paste(energyusage1$Date,energyusage1$Time), "%Y-%m-%d %H:%M:%S"),energyusage1$Sub_metering_3,type="l",col="blue")
legend("topright",# places a legend at the appropriate place
c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), # puts text in the legend 
lty=c(1,1), # gives the legend appropriate symbols (lines),
lwd=c(2.5,2.5),col = c("black", "red","blue")) # gives the legend lines the correct color and width


plot(strptime(paste(energyusage1$Date,energyusage1$Time), "%Y-%m-%d %H:%M:%S"),energyusage1$Global_reactive_power,type="l",ylab="Global Reactive Power",xlab="Datetime")
dev.off()