# Read the data and save the part Feb.1-Feb.2,2007
powconsTable = read.table("household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
powcons2dates <- subset(powconsTable, powconsTable[,1]=="1/2/2007"|powconsTable[,1]=="2/2/2007")

# Convert dates
data_DateTime <- paste(powcons2dates[,1], powcons2dates[,2])
data_DateTime <- strptime(data_DateTime, format="%d/%m/%Y %H:%M:%S")

png(filename="plot2.png", width=480, height=480, bg="transparent")

# Plot the data
plot(data_DateTime,powcons2dates[,3], type="l", ylab="Global Active Power (kilowatts)", xlab="")

dev.off()