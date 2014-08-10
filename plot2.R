if(!exists("dfPC")) 
  source("readData.r")

dfGAP<-as.numeric(dfPC[dfPC$Global_active_power!="?","Global_active_power"])

png("plot2.png",width = 480, height=480)
plot(x=dfPC$FullDate,y=dfGAP, ylab="Global active power (kilowatt)",type="l")
dev.off()