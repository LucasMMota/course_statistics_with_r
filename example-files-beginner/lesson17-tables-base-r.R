demo <- read.csv("demographics.csv")

View(demo)

##########
### how to create frequency tables
### in base R
##########

### we will build a table for the variable educ (education level)
### this table will contain the following:
### absolute frequencies (counts), cumulative absolute frequencies,
### relative frequencies and cumulatitve relative frequencies

### create the initial table (with the counts only)

mytable <- table(demo$educ, exclude = NULL)  ### the missing values will be excluded

print(mytable)

### compute the cumulative counts (using the cumsum fuction)

cumul <- cumsum(mytable)

print(cumul)

### compute the relative frequencies

relative <- prop.table(mytable)

print(relative)

### compute the cumulative relative frequencies

n <- nrow(demo)  ### number of rows (cases) of the data frame demo

cumulfreq <- cumul/n

print(cumulfreq)

### create the final table with the cbind function

mytable2 <- cbind(Freq=mytable, Cumul=cumul, Relative=relative, CumFreq=cumulfreq)

print(mytable2)

###
### the commands above can be used with numeric variables as well
###
