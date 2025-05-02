#airquality = read.csv('path/airquality.csv' , header = TRUE , sep = ",")
airquality <- datasets::airquality
head(airquality , 20)
tail(airquality , 10)
#for columns
airquality[,c(1,2)]
df <- airquality[,-6]#it will exclude last column
airquality$Ozone
summary(airquality$Day)
summary(airquality)


#################
plot(airquality$Ozone, type = "l")
plot(airquality$Temp,airquality$Wind  , type = "p")#p : points , l : lines , b : both
plot(airquality)

plot(airquality$Temp , xlab = "temperature " , ylab = "no of instances" ,
     main = "Observed temperature " , col = "cyan" , type = "l")
#horizontal bar plot

barplot(airquality$Ozone , main = "ozone Consantration in Air" , 
        ylab = " ozone levels" , col = "cyan" ,horiz = T, axes = T )
#horiz = F means bars will be vertical otherwise bars will horizontal
#axes = T means y values are available
# histogram
hist(airquality$Temp)
#boxplot
boxplot(airquality$Ozone)
boxplot(airquality$Wind , main = "boxplot")$out
boxplot(airquality[,1:4] , main = "Multiple boxplots")
#mfrow is for row and columns 
#mar is for margin of grid i.e from all four sides of box
#labels las = 1 for horizontal 
# las = 0 for vertical
#bty = 0 box around the plot also bty = n for no

par(mfrow = c(3,3) , mar = c(2,5,2,1) , las = 0 , bty = "o")

plot(airquality$Ozone)
plot(airquality$Ozone , airquality$Wind)
plot(airquality$Ozone , type = "l")
plot(airquality$Ozone ,type = "l")
plot(airquality$Ozone ,type = "l")
barplot(airquality$Ozone , main = "ozone Consantration in Air" , 
        ylab = " ozone levels" , col = "cyan" ,horiz = T, axes = T )
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4] , main = "multiple boxplots")














