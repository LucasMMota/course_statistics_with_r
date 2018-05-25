demo <- read.csv("demographics.csv")

View(demo)

##########
### how to perform the Shapiro-Wilk normality test 
##########

### we will check whether the variable income is normally distributed

shapiro.test(demo$income)

### the shapiro.test function is included in the stats package,
### which is loaded by default when you start R


