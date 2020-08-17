tab1<-read.table("household_power_consumption.txt",sep=';',header = TRUE,dec = '.')
tab1<-subset(tab1,Date %in% c('1/2/2007','2/2/2007'))
tab1$Global_active_power<-as.numeric(tab1$Global_active_power)
#Saving plot png file 
png(filename = "plot1.png",width = 480,height = 480,units = "px")
hist(tab1$Global_active_power,col='red',xlab = "Global Active Power(kilowatts)",main = "GLOBAL ACTIVE POWER")
dev.off()