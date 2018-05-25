demo <- read.csv("demographics.csv")

View(demo)

##########
### how to compute the main statistical indicators
### for a numeric variable in base R
##########

####### we will compute these indicators for the variable income

### mean

mean(demo$income)

### or

m <- mean(demo$income)

print(m)

### standard deviation and variance

sd(demo$income)

var(demo$income)

### minimum, maximum and range

min(demo$income)

max(demo$income)

range(demo$income)

max(demo$income) - min(demo$income)

### median

median(demo$income)

### quartiles

quantile(demo$income)
