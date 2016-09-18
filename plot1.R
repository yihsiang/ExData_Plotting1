library("data.table")
library("dplyr")
library("lubridate")

source("load.r")

plot1 <- function() {
    
    power <- load()
    
    # Generate graph 1
    png(filename = "plot1.png", width = 480, height = 480, units = "px")
    hist(power$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)",col="Red")
    dev.off()
    

}