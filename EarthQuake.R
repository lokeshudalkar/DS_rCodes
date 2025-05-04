#new dataset
eq <- datasets::quakes
eq
nrow(eq)


#now find out the variance and skewness , kurtosis

#var
var(eq$mag, na.rm = TRUE)
var(eq$depth , na.rm = TRUE)

#skewness
skewness(eq$mag , na.rm = TRUE)
skewness(eq$depth , na.rm = TRUE)

#kurtosis
kurtosis(eq$mag , na.rm = TRUE)
kurtosis(eq$depth , na.rm = TRUE)


#Standerd Deviation
sd(eq$mag , na.rm = TRUE)
sd(eq$depth , na.rm = TRUE)

#summary of all the attributes
summary(eq)

#summary of magnitude and depth
summary(eq$mag)
summary(eq$depth)


#now plot magnitude and Depth
plot(eq$mag , col = "blue")
plot(eq$depth, col = "blue", xlab = "values")

#Now both are plot against each other 
plot(eq$mag , eq$depth , col="blue", xlab = "Magnitude" , ylab = "Depth" , type = "p")
#Below line will make plot messy
plot(eq$mag , eq$depth , col="blue", xlab = "Magnitude" , ylab = "Depth" , type = "b")


#horizontal bar plot
#In this values are more thats why its not showing the given color in our barplot
barplot(eq$mag , main = "Magnitude of Earth Quake ",
        ylab = " magnitude levels " ,col = "cyan" ,horiz = T, axes = T)


#horiz = F means bars will be vertical otherwise bars will horizontal
#axes = T means y values are available



# histogram
hist(eq$mag)
hist(eq$depth)



#BoxPlot
boxplot(eq$mag)
boxplot(eq$mag)$out  #For getting the outliers values if any "$out"

boxplot(eq$depth)
boxplot(eq$depth)$out


#For multiple Boxplots
boxplot(eq[, 1:3], main = "Multiple BoxPlots")

par(mfrow = c(3,3) , mar = c(2,5,2,1) , las = 0 , bty = "o")
#Description about the Attributes
#mfrow is for row and columns 
#mar is for margin of grid i.e from all four sides of box
#labels las = 1 for horizontal 
# las = 0 for vertical
#bty = 0 box around the plot also bty = n for no

plot(eq$mag , type = "p")#1
plot(eq$depth , type = "p")#2
plot(eq$mag , eq$depth )#3

hist(eq$depth)#4
hist(eq$mag)#5

barplot(eq$mag , main = "Magnitude of Earth Quake ",
        ylab = " magnitude levels " ,col = "cyan" ,horiz = T, axes = T)#6

barplot(eq$depth , main = "Depth of Earth Quake ",
        ylab = " Depth levels " ,col = "cyan" ,horiz = T, axes = T)#7


boxplot(eq$mag)#8
boxplot(eq$depth)#9





