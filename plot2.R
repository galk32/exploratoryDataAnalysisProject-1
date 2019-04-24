hpc <- read.csv("~/Coursera/Coursera - Exploratory Data Analysis - R/week1/project 1/Coursera_project1/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
head(hpc)
str(hpc)
hpc$dateTime <- cbind(hpc$Date,hpc$Time)

ohpc$Date <- as.Date(hpc$Date, "%d/%m/%Y")
hpc$Time <- strptime(hpc$Time, format = "%H:%M:%S")
hpc$Global_active_power <- as.numeric(hpc$Global_active_power)

#making the plot
png(filename = "plot.1.png", width = 480, height =480, units = "px")
plotSample <- subset(hpc, Date == "2007-02-01" | Date == "2007-02-02")
str(plotSample)
hist(plotSample$Global_active_power, col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()



