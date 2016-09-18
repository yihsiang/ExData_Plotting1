library("data.table")
library("dplyr")
library("lubridate")

source("load.r")

plot2 <- function() {
    
    power <- load()

    # Generate graph 2
    png(filename = "plot2.png", width = 480, height = 480, units = "px")
    plot(power$Global_active_power ~ power$DateTime, type="lines", xlab="", ylab="Global Active Power (kilowatts)")
    dev.off()
}

