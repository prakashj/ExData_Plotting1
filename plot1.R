plot1 <- function ()
{
  hospfile <- read.csv("household_subset.txt",sep=";")
  png("plot1.png")
  hist(hospfile$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
 dev.off()
}