setwd("/Users/mac/Documents/coursera/ExData_Plotting1/")
data <- read.table("./household_power_consumption.txt", sep = ";", header = TRUE, skip = 66636, nrows = 2880)
olumnNames <- read.table("./household_power_consumption.txt", sep = ";", header = TRUE, nrows = 1)
names(data) <- names(columnNames)
data$DateTime <- strptime(paste(data$Date, data$Time) , format = "%d/%m/%Y %H:%M:%S")
png(filename = "./plot1.png")
hist(data$Global_active_power, col = "red", ylab = "Frequency", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()

