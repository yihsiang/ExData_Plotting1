library("data.table")
library("dplyr")
library("lubridate")

source("load.r")

plot3 <- function() {
    
    power <- load()

    # Generate graph 3
    png(filename = "plot3.png", width = 480, height = 480, units = "px")
    plot(power$Sub_metering_1 ~ power$DateTime, type="lines", col="Black", xlab="", ylab="Energy sub metering")
    lines(power$Sub_metering_2 ~ power$DateTime, col="Red")
    lines(power$Sub_metering_3 ~ power$DateTime, col="Blue")
    legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1), 
           lwd=c(1,1,1), col=c("Black","Red","Blue"))
    dev.off()
}

