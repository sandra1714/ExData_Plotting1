# Read the data and save the part Feb.1-Feb.2,2007
powconsTable = read.table("household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
powcons2dates <- subset(powconsTable, powconsTable[,1]=="1/2/2007"|powconsTable[,1]=="2/2/2007")

png(filename="plot1.png", width=480, height=480, bg="transparent")

# Plot the data
hist(as.numeric(powcons2dates[,3]), xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")

dev.off()