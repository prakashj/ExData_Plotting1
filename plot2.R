plot2 <- function ()
{
  hospfile <- read.csv("household_subset.txt",sep=";") #Reading the subset file for 2 days
  gapk <- hospfile$Global_active_power
  timecol <- do.call(paste,c(hospfile[c("Date","Time")], sep=" "))
  timecol <- strptime(timecol, "%m/%d/%Y %H:%M:%S")
  png("plot2.png")
  plot(timecol,gapk,type="l",xlab="",ylab="Global Active Power (kilowatts)", yaxt ="n", ylim=c(0,8))
  axis(2,at=seq(0,6,by=2))
  dev.off()
  }
 