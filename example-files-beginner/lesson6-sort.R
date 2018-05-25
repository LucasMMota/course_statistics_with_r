demo <- read.csv("demographics.csv")

View(demo)

### how to sort a data frame

### a new data frame, demo2, will be created each time

### sort by income, ascending (default)

demo2 <- demo[order(demo$income),]

View(demo2)

### sort by income, descending

demo2 <- demo[order(-demo$income),]

View(demo2)

### sort by income and age 

demo2 <- demo[order(demo$income, demo$age),]

View(demo2)


### sort by income (ascending) and age (descending)

demo2 <- demo[order(demo$income, -demo$age),]

View(demo2)
