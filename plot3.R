# Read the data and save the part Feb.1-Feb.2,2007
powconsTable = read.table("household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
powcons2dates <- subset(powconsTable, powconsTable[,1]=="1/2/2007"|powconsTable[,1]=="2/2/2007")

# Convert the dates
data_DateTime <- paste(powcons2dates[,1], powcons2dates[,2])
data_DateTime <- strptime(data_DateTime, format="%d/%m/%Y %H:%M:%S")

png(filename="plot3.png", width=480, height=480, bg="transparent")

# Plot the data
plot(data_DateTime, powcons2dates[,7], type="l", ylab="Energy sub metering", xlab="")
lines(data_DateTime, powcons2dates[,8], type="l", xaxt='n', yaxt='n', ylab="", xlab="", col="red")
lines(data_DateTime, powcons2dates[,9], type="l", xaxt='n', yaxt='n', ylab="", xlab="", col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lty=1)

dev.off()