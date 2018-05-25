demo <- read.csv("demographics.csv")

View(demo)

##########
### how to perform the chi square test for goodness-of-fit
##########

### we will use the categorical variable educ (education level)

### create a counts table for our variable

mytable <- table(demo$educ)

print(mytable)

### run the chi square test
### with equal theoretical probabilities

n <- length(mytable)

print(n)

thprop <- 1/n

print(thprop)

chisq.test(mytable, p=rep(thprop, n))

### get the expected values, the residual values and the standardized residuals

chisq.test(mytable, p=rep(thprop, n))$expected

chisq.test(mytable, p=rep(thprop, n))$residuals

chisq.test(mytable, p=rep(thprop, n))$stdres

### run the chi square test
### with UNequal theoretical probabilities

chisq.test(mytable, p=c(0.30,0.30,0.20,0.10,0.10))

chisq.test(mytable, p=c(0.30,0.30,0.20,0.10,0.10))$expected

### if some expected counts are lower than 5
### we can ask the program to simulate the p value

chisq.test(mytable, p=rep(thprop, n), simulate.p.value=TRUE)

