# Read the csv file
# In build data set

df <- datasets::airquality

# Top 10 Rows and Last 10 Rows

head(df)      # -- First 6 records
tail(df)      # -- Last 6 records

head(df,10)      # -- First 10 records
tail(df,15)      # -- Last 15 records


# Extract data from 5 to 25 rows and 1 to 5 Column

df[c(5:25), c(1:5)]

# --- Select Column ---

df$Ozone
df$Solar.R
df$Wind
df$Temp
df$Month
df$Day  


df[, c(1,4)]

# --- Summary of Data ---

summary(df)
summary(df$Ozone)
attach(df)
summary(Ozone)
detach(df)
mean(Wind)
median(Wind)
mode(Month)


install.packages('modeest')
library(modeest)
mfv(Month)


# --- DATA VISUALIZATION in R ---
# Scatter / Point and line Graph
plot(Ozone)
plot(Ozone, type = 'p')  # 'p', 'l', 'b'

plot(Ozone, xlab ='X-axis', ylab ='y-axis',
     main = ' Scatter plot', col = 'red')
plot(Ozone, Wind)
plot(Ozone, Wind, main = 'Wind on ozone')


# Bar Plot 
barplot(Month)
barplot(Month, xlab = 'Months', ylab = 'Frequency',
        col = 'Yellow')
barplot(Ozone, main = 'Barplot', horiz = T)

# Histogram and density
hist(Ozone, xlab = 'Ozone', ylab = 'Frequency',
     main = 'Histogram', col = 'Cyan')
hist(Ozone, xlab = 'Ozone', ylab = 'Frequency',
     main = 'Histogram', col = 'darkred', density = 20,)

# Density and Smooth 
hist(Wind, breaks = 10, probability = T)
lines(density(Wind), col = 'Red')



# Single box plot and stars
boxplot(Ozone)
boxplot(Ozone, main = 'Detection of outliers',
        col = 'blue')
boxplot(Ozone)$out  # To see Outliers
boxplot(Ozone)$stats # To see Descriptions

# Multiple box plots

boxplot(df[,c(1,2)])
boxplot(df[,c(1,2)], col = c('red', 'yellow'))


# parameter [par] Function
par(mar = c(2,5,2,1), mfrow = c(3,3), bty = 'o',
    las = 0)
plot(Ozone)
plot(Wind, col = 'red')
barplot(Month)
plot(Temp, type = 'l')
boxplot(Solar.R, col = 'blue')
hist(Ozone)
hist(Day)
boxplot(Ozone)
hist(Ozone)

#Plot the entire data set
plot(df)

#Standard Deviation sd
sd(Ozone, na.rm = T)  #no null values
sd(Wind)

# Variance var
var(Ozone, na.rm = T)
var(Wind)

#Skewness
install.packages('moments')
library(moments)
skewness(Wind)

#Kurtosis
kurtosis(Wind)
