library("data.table")
library("dplyr")
library("lubridate")

source("load.r")

plot4 <- function() {
    
    power <- load()

    # Generate graph 4
    png(filename = "plot4.png", width = 480, height = 480, units = "px")
    
    par(mfrow=c(2,2))
    
    plot(power$Global_active_power ~ power$DateTime, type="lines", xlab="", ylab="Global Active Power")
    plot(power$Voltage ~ power$DateTime, type="lines", xlab="datetime", ylab="Voltage")
    plot(power$Sub_metering_1 ~ power$DateTime, type="lines", col="Black", xlab="", ylab="Energy sub metering")
    lines(power$Sub_metering_2 ~ power$DateTime, col="Red")
    lines(power$Sub_metering_3 ~ power$DateTime, col="Blue")
    legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),
           lwd=c(2.5,2.5,2.5), col=c("Black","Red","Blue"), box.lwd=0)
    plot(power$Global_reactive_power ~ power$DateTime, type="lines", xlab="datetime", ylab="Global_reactive_power")
    
    dev.off()
}


