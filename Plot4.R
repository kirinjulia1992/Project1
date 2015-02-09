raw <- read.csv("~/Desktop/MOOC/Exploratory Data Analysis/household_power_consumption.txt", sep=";",nrows=73600); #tab5rows
dates<-c('1/2/2007','2/2/2007')
raw_data<-raw[raw$Date %in% dates,]
write.csv(raw_data,file="~/Desktop/MOOC/Exploratory Data Analysis/raw_data.csv")
dummy2 <- read.csv("~/Desktop/MOOC/Exploratory Data Analysis/raw_data.csv")
data<-dummy2[,c(2:10)]
datetime<-dummy2$X
b1<-dummy2$Global_active_power
b2<-dummy2$Voltage
b3<-dummy2$Sub_metering_1
c<-dummy2$Sub_metering_2
d<-dummy2$Sub_metering_3
b4<-dummy2$Global_reactive_power

png("~/Desktop/MOOC/Exploratory Data Analysis/plot4.png",width=480, height=480,)
par(mfrow=c(2,2))
#1st plot
plot(datetime,b1,type="l",xlab=" ",ylab="Global Active Power",xaxt="n")
dumlab=c("Thu","Fri","Sat")
axis(1,at=seq(66637,70950,1440),labels=dumlab)
#2nd plot
plot(datetime,b2,type="l",ylab="Voltage",xaxt="n")
dumlab=c("Thu","Fri","Sat")
axis(1,at=seq(66637,70950,1440),labels=dumlab)
#3rd plot
with(dummy2,plot(datetime,b3,type="n",col="black",xlab=" ",ylab="Energy sub metering",xaxt="n"))
with(dummy2,points(a,b3,type="l",col="black",yaxt="n",xaxt="n"))
with(dummy2,points(a,c,type="l",col="red"),yaxt="n",xaxt="n")
with(dummy2,points(a,d,type="l",col="blue"),yaxt="n",xaxt="n")
dumlab=c("Thu","Fri","Sat")
axis(1,at=seq(66637,70950,1440),labels=dumlab)

#4th plot
plot(datetime,b4,type="l",ylab="Global Reactive Power",xaxt="n")
dumlab=c("Thu","Fri","Sat")
axis(1,at=seq(66637,70950,1440),labels=dumlab)
dev.off()




