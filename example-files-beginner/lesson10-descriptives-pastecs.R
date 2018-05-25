demo <- read.csv("demographics.csv")

View(demo)

##########
### how to compute the main statistical indicators for a numeric variable 
### with the pastecs package
##########

###### we will compute this indicators for the following variables
###### age, income and car price

### create a matrix with the variables of interest

demo2 <- cbind(demo$age, demo$income, demo$carpr)

### give suggestive names to the matrix columns

colnames(demo2) <- c("age", "income", "carpr")

View(demo2)

### load the pastecs package

require(pastecs)

### before computing the indicators we set some options (in base R)

options(scipen=100)  ## force R to use the standard notation, NOT the exponential notation

options(digits=2)    ## make R show only the first two decimals

### run the stat.desc funtion from pastecs

### if we want ALL the statistics we run

stat.desc(demo2)

### if we want to omit the basic statistics we run

stat.desc(demo2, basic = FALSE)

### if we want the basic statistics only we can execute

stat.desc(demo2, desc = FALSE)
