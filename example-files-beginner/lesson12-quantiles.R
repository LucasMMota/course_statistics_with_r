demo <- read.csv("demographics.csv")

View(demo)

##########
### how to compute quantiles 
##########

### we will use the variable income for our example

### compute the following percentiles
### 17%, 55% and 97%

### use the quantile function in the stats package
### (this package loads automatically when you start R)

quantile(demo$income, probs = c(0.17, 0.55, 0.97))

### to get the quartiles

quantile(demo$income, probs = c(0.25, 0.50, 0.75))
