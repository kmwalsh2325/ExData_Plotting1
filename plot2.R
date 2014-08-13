construct_plot2 <- function(datapath) {

	source("load_data.R")
	dataset <- loadPowerData(datapath)

	# the part where we make the plot and print it as a png (auto dim=480x480)
	## I would like to find a more data table way to create the datetime column
	datetime <- dataset[, strptime(paste(Date, Time), format = "%Y-%m-%d %H:%M:%S")]
  plot(datetime, dataset[, Global_active_power], type ="l", xlab="", ylab="Global Active Power (kilowatts)")

  # print the thing
  dev.copy(png, file = "plot2.png")
  dev.off()

} ## end construct_plot2