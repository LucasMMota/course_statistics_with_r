demo <- read.csv("demographics.csv")

View(demo)

### how to filter (select) your data in base R using subsets

### a new data frame, demo2, will be created each time

### keep the married subjects only
### (one filter variable)

demo2 <- subset(demo, marital == "Married")

View(demo2)

### retain the married subjects aged over 35
### (two filter variables)

demo2 <- subset(demo, marital == "Married" & age > 35)

View(demo2)

### keep the first three variables only
### (age, marital status, income)

demo2 <- subset(demo, marital == "Married" & age > 35, select = c(1:3))

View(demo2)

### drop variables 4, 5, 6 and 8
### (education, car price, car category, retired)

demo2 <- subset(demo, marital == "Married" & age > 35, select = -c(4:6, 8))

View(demo2)
