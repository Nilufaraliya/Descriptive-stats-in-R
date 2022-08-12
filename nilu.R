airquality<- datasets::airquality
####top 10 rows and last 10 rows

head(airquality,10)
tail(airquality,10)
###### columns

airquality[50:60,c(1,2)]
df<-airquality[,-6]

#descriptive statastics
summary(airquality[,c(4,5)])

airquality$Temp
airquality$Wind
airquality$Ozone

plot(airquality$Wind, xlab ='ozone concentration',
     ylab = 'No of Instances', main = 'ozone levels in NY city',
     col= 'blue', type = 'l')
###horizontal barplot

barplot(airquality$Ozone, main = 'ozone concentration in air',
        main= 'solar radiation values in air',
        xlab= 'solar rad', col= 'blue',horiz = F,axes=T)

#histogram

hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#single box plot

boxplot(airquality$Wind,main="Boxplot")
boxplot.stats(airquality$Wind)$out

boxplot.stats(airquality$Ozone)$out

#multiple box plot

boxplot(airquality[,1:4,main='Multiple'])

#margin of the grid(mar),
#no rows and columns(mfrow),
#whether a border is to be included(bty)
#and position of the
#labels(las: 1 for horizontal , las 0 for vertical)
#bty- box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")

plot(airquality$Ozone) 
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')

summary(airquality)

##
e_quakes<-datasets::quakes
sd(airquality$Ozone,na.rm = T)



