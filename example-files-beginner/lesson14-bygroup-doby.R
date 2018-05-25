demo <- read.csv("demographics.csv")

View(demo)

##########
### how to compute the main statistical indicators by groups or subsets
### with the package doBy
##########

### we will get the main statistical indicators for the variable income
### by gender (separately for male and female subjects)

### load the package

require(doBy)

### define the function that generates the statistics
### N.B. descStat is the command (in the doBy package) that computes the statistical indicators

func <- function(x) {descStat(x, na.rm=TRUE)}

### use the command summaryBy

summaryBy(income~gender, data=demo, FUN=func)

### get the main statistical indicators for the variables income and age
### by gender

summaryBy(income+age~gender, data=demo, FUN=func)
