demo <- read.csv("demographics.csv")

View(demo)

##########
### how to determine the mode of a numeric variable
### with the package modeest
##########

### we will find out the mode for the variable income

### load the package

require(modeest)

mlv(demo$income, method="mfv")   ### "mfv" stands for "most frequent value"

### for the discrete variables, the best way to compute the mode is to tabulate the frequencies
### as we will learn in a future lecture of this course

