demo <- read.csv("demographics.csv")

View(demo)

##########
### how to create cross-tables
### in base R (with the xtabs function) 
##########

### we will build a cross table with the variables gender and carcat (car category)

ct <- xtabs(~gender+carcat, data=demo)

ftable(ct)
