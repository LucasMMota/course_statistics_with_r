demo <- read.csv("demographics.csv")

View(demo)

##########
### how to compute the main statistical indicators by groups or subsets
### with the package stats (command aggregate)
##########

### we will get some statistical indicators for the variable age
### by marital status (married/unmarried)

### compute the mean

aggregate(demo$age, by=list(demo$marital), FUN=mean)

### compute the standard deviation

aggregate(demo$age, by=list(demo$marital), FUN=sd)

### compute the median

aggregate(demo$age, by=list(demo$marital), FUN=median)

### compute the variance

aggregate(demo$age, by=list(demo$marital), FUN=var)

### etc.

### very useful when we want to combine the factor categories

aggregate(demo$age, by=list(demo$marital, demo$gender), FUN=mean)

