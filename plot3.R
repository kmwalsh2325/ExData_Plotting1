construct_plot3 <- function(datapath) {

	source("load_data.R")
	dataset <- loadPowerData(datapath)

	# the part where we make the plot and print it as a png (auto dim=480x480)
	## I would like to find a more data table way to create the datetime column
	datetime <- dataset[, strptime(paste(Date, Time), format = "%Y-%m-%d %H:%M:%S")]
  plot(datetime, dataset[, Sub_metering_1], ylab="Energy sub metering", xlab ="", type="l")
  lines(datetime, dataset[, Sub_metering_2], col="Red")
  lines(datetime, dataset[, Sub_metering_3], col="Blue")
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), lwd = c(2.5,2.5,2.5), col = c("Black", "Red", "Blue"))

  # print the thing
  dev.copy(png, file = "plot3.png")
  dev.off()

} ## end construct_plot3