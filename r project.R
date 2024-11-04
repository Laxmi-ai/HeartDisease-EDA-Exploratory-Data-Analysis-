
 unzip("D:/cu 1sem projects/heart+disease.zip",exdir="D:/cu 1sem projects/heart+disease")
 files<-list.files("D:/cu 1sem projects/heart+disease",full.names=TRUE)
 files
 data1<-read.csv( "D:/cu 1sem projects/heart+disease/processed.switzerland.data")
 data1
#use some basic function on the dataset
library(dplyr)
dim(data1)
head(data1)
tali(data1)
str(data1)
glimpse(data1)
View(data1)
names(data1)
rownames(data1) 
summary(data1)
#access the column
data1$X1
data1$X32
#access the specific values
data1[c(2,3),c(4,5)]
# Select columns by index if names are not easily accessible
data1[, c(1, 7, 8)]  # Replace with actual column indices
# Delete rows 2, 5, and 10
data1 <- data1[-c(2, 5, 10), ]
data1
# Add a new column "NewColumn" with a constant value of 1
data1$NewColumn <- 1
data1
data1$Category <- ifelse(data1$X1 > 20, "High", "Low")
data1
library(dplyr)
#add new row
ab<-1:16
rbind(data1,ab)
#find the sum of null values
sum(is.na(data1))

# Customized box plot
boxplot(data1$X32, 
        main = "Customized Box Plot of X32",
        ylab = "Values",
        col = "skyblue",
        border = "darkblue",
        notch = TRUE,
        outline = TRUE)  # Shows outliers

# Box plot of X32 grouped by the categories in X1
boxplot(X32 ~ X1, data = data1, 
        main = "Box Plot of X32 Grouped by X1",
        xlab = "X1 Categories",
        ylab = "X32 Values",
        col = "lightblue")

# Box plot for all numeric columns
boxplot(data1[, sapply(data1, is.numeric)], 
        main = "Box Plot of All Numeric Columns", 
        col = "lightblue")
# Basic box plot of the X32 column
boxplot(data1$X32, main = "Box Plot of X32", ylab = "Values", col = "lightblue")


# Basic histogram for X32
hist(data1$X32, 
     main = "Histogram of X32", 
     xlab = "Values of X32", 
     col = "lightblue", 
     border = "darkblue")

# Histogram with custom number of bins
hist(data1$X32, 
     main = "Histogram of X32 with Custom Bins", 
     xlab = "Values of X32", 
     col = "lightgreen", 
     border = "darkgreen", 
     breaks = 20)  # Increase or decrease for finer/coarser bins


# Histogram with density curve
hist(data1$X32, 
     main = "Histogram of X32 with Density Curve", 
     xlab = "Values of X32", 
     col = "lightblue", 
     border = "darkblue", 
     probability = TRUE)  # Set to TRUE to plot density

# Add density curve
lines(density(data1$X32, na.rm = TRUE), 
      col = "red", 
      lwd = 2)

# Set up a 1x2 plot layout
par(mfrow = c(1, 2))


# Histograms for X1 and X32
hist(data1$X1, 
     main = "Histogram of X1", 
     xlab = "Values of X1", 
     col = "lightcoral")
hist(data1$X32, 
     main = "Histogram of X32", 
     xlab = "Values of X32", 
     col = "lightblue")

# Reset layout to default
par(mfrow = c(1, 1))







