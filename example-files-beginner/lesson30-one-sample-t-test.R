demo <- read.csv("demographics.csv")

View(demo)

##########
### how to perform the one-sample t test
##########

#################
### Basic assumptions:

# the variable of study is normally distributed
# the variable does not present important outliers
#################

### we will check whether the average income is significantly different from 70

t.test(demo$income, alternative="two.sided", mu=70)


