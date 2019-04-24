hpc <- read.csv("~/Coursera/Coursera - Exploratory Data Analysis - R/week1/project 1/Coursera_project1/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)

hpc$dateTime <- paste(hpc$Date, hpc$Time, sep= " ")
hpc$dateTime <-strptime(hpc$dateTime, format = "%d/%m/%Y %H:%M:%S") 
str(hpc)
hpc$Sub_metering_1 <- as.numeric(hpc$Sub_metering_1)
hpc$Sub_metering_2 <- as.numeric(hpc$Sub_metering_2)
plotSample <- subset(hpc, dateTime >= "2007-02-01 00:00:00" & dateTime <= "2007-02-02 23:59:59")
#making the plot
png(filename = "plot.3.png", width = 480, height =480, units = "px")
plot(plotSample$dateTime,plotSample$Sub_metering_1, col ="black", type = "l", xlab = " ", ylab = "Energy sub metering")
lines(plotSample$dateTime, plotSample$Sub_metering_2,col="red", type = "l")
lines(plotSample$dateTime, plotSample$Sub_metering_3,col="blue", type = "l")      
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3") )
dev.off()

