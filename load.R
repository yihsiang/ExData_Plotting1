library("data.table")
library("dplyr")
library("lubridate")


load <- function() {
    # Set the data file. Change this if necessary to point to location 
    # of your data file
    workingDir <- "~/Documents/Learning/coursera/data_science/exploratory_analysis_week1/ExData_Plotting1/"
    zipFile <- "household_power_consumption.zip"
    dataFile <- "household_power_consumption.txt"
    sourceURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

    setwd(workingDir)
    # If directory does not exist, download the zip file and extract the data
    if (!file.exists(dataFile)) {
        download.file(sourceURL,dest=zipFile, mode="wb")
        unzip(zipFile, exdir="./")
        unlink(zipFile)
    }    
    
    # Read the files
    power <- fread(dataFile, header=TRUE, sep = ";", na.strings = "?")
    
    power$Date <- as.Date(power$Date, "%d/%m/%Y")
    power <- rbind(power[power$Date=='2007-02-01'], power[power$Date=='2007-02-02'])
    power$DateTime <- paste(power$Date,power$Time)
    power$DateTime <- as.POSIXct(power$DateTime)

    return(power)
}