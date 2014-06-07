#Reading and Subseting
energyusage=read.csv("household_power_consumption.txt",sep=";",na.string="?")
energyusage$Date=as.Date(energyusage$Date, "%d/%m/%Y")
energyusage1=energyusage[energyusage$Date=="2007-02-01"|energyusage$Date=="2007-02-02",]

#Ploting plot1
png(filename="plot1.png", width=480, height=480)
hist(energyusage1$Global_active_power,xlab="Global Active Power(Kilowatts)", col="red",main="Global Active Power")
dev.off()