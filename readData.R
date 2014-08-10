dfPC<-read.csv("./household_power_consumption.txt",sep = ";",stringsAsFactors=FALSE)
dfPC$FullDate<-strptime(paste(dfPC$Date,dfPC$Time,sep=":"),"%d/%m/%Y:%H:%M:%S")
dfPC<-dfPC[!is.na(dfPC$FullDate),]
dfPC<-dfPC[dfPC$FullDate>=as.POSIXct("2007-02-01") & dfPC$FullDate<as.POSIXct("2007-02-03"),]