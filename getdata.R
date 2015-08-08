getdata <- function() {
  
  # Specify text file to be read and its path
  txt_file <- "~/Documents/Programming/R/coursera/exploratorydata/data/household_power_consumption.txt"
  
  # Specify the type of data in each column
  col_classes <- c(rep("character",2), rep("numeric",7))
  
  # Read from the text file and create new data frame
  pwr_data <- read.table(txt_file, header = TRUE, sep = ";", colClasses = col_classes, na.strings = "?")
  
  # Subset data to include only Feb 1, 2007 through Feb 2, 2007
  dat <- subset(pwr_data, pwr_data$Date == "1/2/2007" | pwr_data$Date == "2/2/2007")
  
  return(dat)
}
