demo <- read.csv("demographics.csv")

View(demo)

##########
### how to detect the outliers in a data series
### with the help of the standardized values
##########

### we will check whether the variable income presents outliers

### compute the standardized values of the variable

zinco <- scale(demo$income, scale=TRUE)

### sort the vector, decreasing

sort(zinco, decreasing=TRUE)


