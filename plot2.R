hpc <- read.csv("~/Coursera/Coursera - Exploratory Data Analysis - R/week1/project 1/Coursera_project1/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)

hpc$dateTime <- paste(hpc$Date, hpc$Time, sep= " ")
hpc$dateTime <-strptime(hpc$dateTime, format = "%d/%m/%Y %H:%M:%S") 
hpc$Global_active_power <- as.numeric(hpc$Global_active_power)

#making the plot
png(filename = "plot.2.png", width = 480, height =480, units = "px")
#making the sample
plotSample <- subset(hpc, dateTime >= "2007-02-01 00:00:00" & dateTime <= "2007-02-02 23:59:59")
str(plotSample)
with(plotSample, plot(dateTime, Global_active_power, type = "l",xlab = "", ylab = "Global Active Power (kilowatts)"))
dev.off()

