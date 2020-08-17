library(lubridate)
tab1<-read.table("household_power_consumption.txt",sep=';',header = TRUE,dec = '.')
tab1<-subset(tab1,Date %in% c('1/2/2007','2/2/2007'))
tab1$Global_active_power<-as.numeric(tab1$Global_active_power)
tab1$Datetime<-dmy_hms(paste(tab1$Date,tab1$Time))
#Saving plot png file 
png(filename = "plot2.png",width = 480,height = 480,units = "px")
plot(tab1$Datetime,tab1$Global_active_power,type='l',ylab = "Global Active Power(kilowatts)",xlab="Time",main = "GLOBAL ACTIVE POWER")
dev.off()