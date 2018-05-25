demo <- read.csv("demographics.csv")

View(demo)

##########
### how to create frequency tables
### with the package plyr (function count)
##########

### we will build a table for the variable educ (education level)
### this table will contain the following:
### absolute frequencies (counts), cumulative counts,
### relative frequencies and cumulative relative frequencies

### load the package

require(plyr)

### build the initial table, with the absolute frequencies

mytable <- count(demo, 'educ')

print(mytable)

# compute the percentages (relative frequencies)

perc <- mytable$freq/nrow(demo)

print(perc)

### compute the cumulative counts

cumul <- cumsum(mytable$freq)

print(cumul)

### compute the cumulative percentages

cumperc <- cumul/nrow(demo)

print(cumperc)

# add the cumulative counts and the percentages to the iniatial table

mytable <- cbind(mytable, cumul, perc, cumperc)

print(mytable)
