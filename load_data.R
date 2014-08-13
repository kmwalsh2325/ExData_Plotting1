loadPowerData <- function(inputpath) {

library(data.table)
housepowerraw <- fread("household_power_consumption.txt", sep=";", header =TRUE, na.strings = "?")
housepowerraw <- na.omit(housepowerraw) ## i dont' think is needed
housepowerraw[, Date := as.Date(Date, format = "%d/%m/%Y")]
housepowerraw <- housepowerraw[Date >= "2007-02-01" & Date <= "2007-02-02"]


} ## loadPowerData