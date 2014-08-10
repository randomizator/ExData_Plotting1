if(!exists("dfPC")) 
  source("readData.r")

dfGAP<-as.numeric(dfPC[dfPC$Global_active_power!="?","Global_active_power"])

png("plot1.png",width = 480, height=480)
hist(dfGAP,col = "Red",main = "Global active power", xlab="Global active power (kilowatt)")
dev.off()