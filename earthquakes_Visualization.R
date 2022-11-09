data <- datasets::quakes

View(data)

head(data)
tail(data)

#select by column

data$lat
data$long
data$depth
data$mag
data$stations

data[, c(1,4)]
data[c(55 : 500), c(3 : 4)]

#Summary

summary(data)
summary(data$lat)
summary(data$stations)

#---------------------
attach(data)
summary(lat)
mean(lat)    #mean
median(lat)  #median

detach(data)
summary(data$lat)
mean(data$lat)     #mean
median(data$lat)   #median
#---------------------
attach(data)

mode(lat)

mfv(lat) # Mode

# ----- Data Visualization -----

# -- Scatter lot/ Point and Line

plot(lat)
plot(lat,long)
plot(lat, type = 'p')    # Point
plot(lat, type = 'l')    # Line
plot(lat, type = 'b')    # Point  & Line (Both)

plot(depth, mag, xlab = 'Depth', ylab = 'magitude',
     main = 'Depth of earthquake', col = 'red')


# -- Bar plot

barplot(mag)
barplot(stations)
barplot(stations, col = 'red')
barplot(stations, horiz = T, col = 'red')
barplot(stations, mag, xlab = 'Stations', ylab = 'magitude',
     main = 'earthquake', horiz = T, )

# -- Histogram


hist(mag)
hist(stations)
hist(stations, col = 'light green')

hist(stations, density = 15, col = ' blue')
hist(mag, xlab = 'magitude', ylab = 'Frequency',
        main = 'earthquake')

hist(mag, breaks = 10, probability = T)
lines(density(mag), col = 'red')

# -- Box plot (Single)

boxplot(lat)
boxplot(lat)$out
boxplot(lat)$stats

# -- Box plot (Multiple)

boxplot(mag, stations)
boxplot(data[, c(4, 5)])
boxplot(data[, c(4, 5)], col = c('red', 'yellow'))

# -- Parameters of Graph

par(mar = c(2,4,2,1), mfrow = c(3,3),
    bty = 'o', las = 0)

boxplot(lat)                           #1
hist(stations, col = 'light green')    #2
barplot(stations, col = 'red')         #3
plot(lat, type = 'p')                  #4
boxplot(data[, c(4, 5)], 
        col = c('red', 'yellow'))      #5
hist(lat, col = 'green')               #6
hist(mag, col = 'white')               #7
plot(lat)                              #8
hist(mag, col = 'pink')                #9


# -- skewness

skewness(mag)

# -- kurtosis

kurtosis(mag)
