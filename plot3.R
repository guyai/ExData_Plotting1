#Reading and Subseting
energyusage=read.csv("household_power_consumption.txt",sep=";",na.string="?")
energyusage$Date=as.Date(energyusage$Date, "%d/%m/%Y")
energyusage1=energyusage[energyusage$Date=="2007-02-01"|energyusage$Date=="2007-02-02",]

#Ploting plot3
png(filename="plot3.png", width=480, height=480)
plot(strptime(paste(energyusage1$Date,energyusage1$Time), "%Y-%m-%d %H:%M:%S"),energyusage1$Sub_metering_1,type="n",ylab="Energy Sub metering",xlab="")
points(strptime(paste(energyusage1$Date,energyusage1$Time), "%Y-%m-%d %H:%M:%S"),energyusage1$Sub_metering_1,type="l")
points(strptime(paste(energyusage1$Date,energyusage1$Time), "%Y-%m-%d %H:%M:%S"),energyusage1$Sub_metering_2,type="l",col="red")
points(strptime(paste(energyusage1$Date,energyusage1$Time), "%Y-%m-%d %H:%M:%S"),energyusage1$Sub_metering_3,type="l",col="blue")
legend("topright",# places a legend at the appropriate place
c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), # puts text in the legend 
lty=c(1,1), # gives the legend appropriate symbols (lines),
lwd=c(2.5,2.5),col = c("black", "red","blue")) # gives the legend lines the correct color and width
dev.off()