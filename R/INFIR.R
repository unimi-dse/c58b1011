#'  @title Effects of Inflation on Interest Rate

 INFIR<-function(){

  systemFileName <- system.file("extdata", "INFIR.csv", package = "INFIR")
  Data <- read.csv(systemFileName)

  print(Data)
  class(Data)
  t<-c("Date","Rir","Inf1")


  colnames(Data)<-t


  lmInf1 <- lm(Inf1~Rir , data=Data)

 l<-summary(lmInf1)


  plot(Data, main = "scatterplot")

  g1 <- data.frame(Data$Date, Data$Rir)
  plot(g1, type = "o", main = "Interest Rate fluctuation from 2005-2014")
  g2<-data.frame(Data$Date, Data$Inf1)
  plot(g2, type= "o", main= "Inflation Trend 2005-2014")
  g3<-data.frame(Data$Rir, Data$Inf1)
  plot(g3,type="o" , main="Inresest Rate and Inflation Trend")

}


