demo <- read.csv("demographics.csv")

View(demo)

### how to filter (select) your data using the dplyr package

### a new data frame, demo2, will be created each time

### load the package

require(dplyr)

### keep the unmarried subjects only
### (one filter variable)

demo2 <- filter(demo, marital == "Unmarried")

View(demo2)

### keep the unmarried subjects only aged under 50
### (two filter variables)

demo2 <- filter(demo, marital == "Unmarried", age < 50)

View(demo2)

### if you want to keep some variables only,
### you must first specify the variables you want to keep

### suppose we want to keep only the first three variables
### (age, marital status, income)

demo2 <- select(demo, age, marital, income)

View(demo2)

### next we filter our new data frame demo2, 
### keeping only the unmarried persons aged under 50

demo2 <- filter(demo2, marital == "Unmarried", age < 50)

View(demo2)
