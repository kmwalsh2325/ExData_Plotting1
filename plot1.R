construct_plot1 <- function(datapath) {

	source("load_data.R")
	dataset <- loadPowerData(datapath)

	# the part where we make the plot and print it as a png (auto dim=480x480)
	hist(dataset[, Global_active_power], col = "Red", main="Global Active Power", xlab ="Global Active Power (kilowatts)", ylab="Frequency")
  dev.copy(png, file = "plot1.png")
  dev.off()

} ## end construct_plot1