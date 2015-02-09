raw <- read.csv("~/Desktop/MOOC/Exploratory Data Analysis/household_power_consumption.txt", sep=";",nrows=73600); #tab5rows
dates<-c('1/2/2007','2/2/2007')
raw_data<-raw[raw$Date %in% dates,]
write.csv(raw_data,file="~/Desktop/MOOC/Exploratory Data Analysis/raw_data.csv")
dummy2 <- read.csv("~/Desktop/MOOC/Exploratory Data Analysis/raw_data.csv")
data<-dummy2[,c(2:10)]

png("~/Desktop/MOOC/Exploratory Data Analysis/plot1.png",width=480, height=480,)
hist(data$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()