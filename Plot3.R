raw <- read.csv("~/Desktop/MOOC/Exploratory Data Analysis/household_power_consumption.txt", sep=";",nrows=73600); #tab5rows
dates<-c('1/2/2007','2/2/2007')
raw_data<-raw[raw$Date %in% dates,]
write.csv(raw_data,file="~/Desktop/MOOC/Exploratory Data Analysis/raw_data.csv")
dummy2 <- read.csv("~/Desktop/MOOC/Exploratory Data Analysis/raw_data.csv")
data<-dummy2[,c(2:10)]
a<-dummy2$X
b<-dummy2$Sub_metering_1
c<-dummy2$Sub_metering_2
d<-dummy2$Sub_metering_3
png("~/Desktop/MOOC/Exploratory Data Analysis/plot3.png",width=480, height=480,)
with(dummy2,plot(a,b,type="n",col="black",xlab=" ",ylab="Energy sub metering",xaxt="n"))
with(dummy2,points(a,b,type="l",col="black",yaxt="n",xaxt="n"))
with(dummy2,points(a,c,type="l",col="red"),yaxt="n",xaxt="n")
with(dummy2,points(a,d,type="l",col="blue"),yaxt="n",xaxt="n")
dumlab=c("Thu","Fri","Sat")
axis(1,at=seq(66637,70950,1440),labels=dumlab)

dev.off()