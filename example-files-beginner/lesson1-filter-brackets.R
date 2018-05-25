demo <- read.csv("demographics.csv")

View(demo)

### how to filter (select) your data data in base R using brackets 

### a new data frame, demo2, will be created each time

######
### one filter variable
######

### select the female subjects 

demo2 <- demo[demo$gender == "Female",]

View(demo2)

### retain the subjects with the income greater than 100

demo2 <- demo[demo$income > 100,]

View(demo2)

### if you want to keep only the variables 1, 3 and 7
### (age, income and gender)

demo2 <- demo[demo$income > 100, c(1,3,7)]

View(demo2)

### if you want to drop variables 6, 7 and 8
### (car category, gender and retired)

demo2 <- demo[demo$income > 100, -c(6:8)]

View(demo2)

######
### two or more filter variables
######

### select the female subjects with the income over 100

demo2 <- demo[demo$gender == "Female" & demo$income > 100,]

View(demo2)
