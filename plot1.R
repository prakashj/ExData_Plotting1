plot1 <- function ()
{
  hospfile <- read.csv("household_subset.txt",sep=";") #Reading the subset file for 2 days
  png("plot1.png")
  hist(hospfile$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red",xlim=c(0,8),xaxt="n")
  axis(1,at=seq(0,6,by=2))
 dev.off()
}