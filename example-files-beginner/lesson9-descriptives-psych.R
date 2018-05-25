demo <- read.csv("demographics.csv")

View(demo)

##########
### how to compute the main statistical indicators for a numeric variable 
### with the psych package
##########

###### we will compute this indicators for the following variables
###### age, income and car price

### create a matrix with the variables of interest

demo2 <- cbind(demo$age, demo$income, demo$carpr)

### give suggestive names to the matrix columns

colnames(demo2) <- c("age", "income", "price")

View(demo2)

### load the psych package

require(psych)

### use the describe function to generate the statistics table

describe(demo2)

### the trimmed mean is computed with a default trim of 0.1

### mad - median absolute deviation (the median of the absolute deviations from the data median)

######## more options for the describe function

describe(demo2, na.rm = TRUE, trim = 0.1, check = TRUE)

### na.rm - if TRUE it omits the missing values (if FALSE it deletes the cases)

### trim -  sets the trimming fraction

### check - if TRUE it checks for non-numeric data
