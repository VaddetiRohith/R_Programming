#--- Data Type ---

# homogeneous (stores only single type of data)
#  - Atomic vector / Vector
#  - Matrix
#  - Array

# heterogeneous (stores multiple type of data)
#  - List
#  - Data Frame

age <- c(11,33,42,24,54,35,67,23,52,76,13)

age[c(2,7)] <- c(43, 21)
age


age[1]
age[6]
          
age[1:6]

age[1] <- 49
age[4] <- 39

age


# ---- List ----
lst <- list(1,2,'hello',TRUE)
lst[3]


# ---- Data Frame (Two ways) ----

# One way
df <- data.frame(age = c(10,11,23), weight = c(23,24,45))

View(df)

df <- data.frame(age = c(10,11,23), weight = c(23,24,45),
                 name = c('a', 'b', 'c'))

# Second Way

p <- c('red', 'yellow', 'green')
q <- c(10,20,30)
r <- c('a','b','c')

df1 <- data.frame(p, q, r)
View(df1)

# --- Slicing ---
df1[1, 1]
df1[, 2]
df1[3,]
df1[c(1,3), 1]
df1[c(1,3), c(1,3)]

x <- c(1, 2, 3)
y <- c('a','b','c')
df <- data.frame(x,y)

# ---- In Class Exercise ------

df[1,1]
df[1,]
df[c(1,3),2]
df[c(1,3),1]
df[c(1,3),c(1,2)]
