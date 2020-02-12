#  @title Effects of Inflation on Interest Rate
library(ggplot2)


 INFIR<-function(){

   #Data contains all your CSV content.
  Data <- read.csv(file ="C:/Users/39351/Documents/R/INFIR/INFIR.csv")

  print(Data)
  class(Data)
  t<-c("Date","Rir","Inf1")

  #Data not Date
  colnames(Data)<-t

  #I guess Inf that your name your column is the same name with R default variable so I add 1 after Inf
  lmInf1 <- lm(Inf1~Rir , data=Data)

 l<-summary(lmInf1)


  plot(Data, main = "scatterplot")


  ##now you have data that contain Date and statistics - Data


  #graph 1 shows Date and Rir
  #you need a data.frame that contain Date and Rir. I name it g1
  g1 <- data.frame(Data$Date, Data$Rir)
  plot(g1, type = "o")
  g2<-data.frame(Data$Date, Data$Inf1)
  plot(g2, type= "o")
  g3<-data.frame(Data$Rir, Data$Inf1)
  plot(g3,type="o")


}


