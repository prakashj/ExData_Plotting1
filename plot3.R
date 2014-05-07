plot3 <- function ()
{
  hospfile <- read.csv("household_subset.txt",sep=";") #Reading the subset file for 2 days
  gapk <- hospfile$Global_active_power
  timecol <- do.call(paste,c(hospfile[c("Date","Time")], sep=" "))
  timecol <- strptime(timecol, "%d/%m/%Y %H:%M:%S")
  plot_colors <- c("black","red","blue")
  
  png("plot3.png")
  plot(timecol,hospfile$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
  lines(timecol,hospfile$Sub_metering_2,type="l",col=plot_colors[2])
  lines(timecol,hospfile$Sub_metering_3,type="l",col=plot_colors[3])
  legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,,col=plot_colors)
  dev.off()
  }
 