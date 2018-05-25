demo <- read.csv("demographics.csv")

View(demo)

##########
### how to check for normality
### with the help of the histogram
##########

### we will check whether the variable income is normally distrbuted
### by visual inspection of the histogram
### we will also add the normal distribution curve to the chart

### load the graphics package

require(ggplot2)

### compute the mean and standard deviation of the income

m <- mean(demo$income)

std <- sd(demo$income)

### build the histogram chart with the normal distribution curve

ggplot()+
  geom_histogram(data=demo, aes(x=income, y=..density..), fill="red")+
  stat_function(fun=dnorm, args = list(mean = m, sd = std), aes(x=demo$income))

### dnorm is a function that creates a normal distribution
### it comes with the stats package


