#Bloomberg Data
x<-read.csv("2016_a.csv")

#changes factors to characters
#x[] <- lapply(x, as.character)

x$x <- NULL
x$X.1 <- NULL
x$x.2 <- NULL
x$x.3 <- NULL

x$date<- as.Date(as.character(x$Date), format = "%m/%d/%Y")
table(x$date)

x$ticker<-as.character(x$Ticker.1)
x$name<-as.character(x$Name)
x$price<-x$Price.as.of.date
x$weight<-x$Weight.as.of.date

x<-x[c("date","ticker","name","weight","price")]

x[which.max(x$price),]
