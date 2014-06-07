#Reading and Subseting
energyusage=read.csv("household_power_consumption.txt",sep=";",na.string="?")
energyusage$Date=as.Date(energyusage$Date, "%d/%m/%Y")
energyusage1=energyusage[energyusage$Date=="2007-02-01"|energyusage$Date=="2007-02-02",]

#Ploting plot2
png(filename="plot2.png", width=480, height=480)
plot(strptime(paste(energyusage1$Date,energyusage1$Time), "%Y-%m-%d %H:%M:%S"),energyusage1$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()
