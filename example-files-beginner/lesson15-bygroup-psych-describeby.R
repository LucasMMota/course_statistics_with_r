demo <- read.csv("demographics.csv")

View(demo)

##########
### how to compute the main statistical indicators by groups or subsets
### with the package psych (command describeBy)
##########

### we will get the main statistical indicators for the variable income
### by education level

### load the package

require(psych)

### use the describeBy command

describeBy(demo$income, demo$educ)
