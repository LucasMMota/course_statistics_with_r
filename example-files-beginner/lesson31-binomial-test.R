demo <- read.csv("demographics.csv")

View(demo)

##########
### how to perform the binomial test
##########

### we will check whether the male/female proportion in the population is 50/50

### create a counts table for the variable gender

mytable = table(demo$gender)

print(mytable)

### run the binomial test

binom.test(mytable, p=0.50, alternative="two.sided", conf.level=0.95)

### to check whether the proportion of male subjects is 60%

binom.test(mytable, p=0.40, alternative="two.sided", conf.level=0.95)

