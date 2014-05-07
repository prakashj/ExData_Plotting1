plot4 <- function ()
{
  hospfile <- read.csv("household_subset.txt",sep=";") #Reading the subset file for 2 days
  gapk <- hospfile$Global_active_power
  timecol <- do.call(paste,c(hospfile[c("Date","Time")], sep=" "))
  timecol <- strptime(timecol, "%d/%m/%Y %H:%M:%S")
  
  plot_colors <- c("black","red","blue")
  
  png("plot4.png")
  par(mfrow = c(2,2))
 # plot 1
 plot(timecol,hospfile$Global_active_power,type="l",xlab="",ylab="Global Active Power")
      
 # plot 2
 plot(timecol,hospfile$Voltage,type="l",xlab="datetime",ylab="Voltage")
 
 #plot 3
  plot(timecol,hospfile$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
  lines(timecol,hospfile$Sub_metering_2,type="l",col=plot_colors[2])
  lines(timecol,hospfile$Sub_metering_3,type="l",col=plot_colors[3])
  legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,,col=plot_colors)
  # plot 4
 plot(timecol,hospfile$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
 
 
 
  dev.off()
  }
 