demo <- read.csv("demographics.csv")

View(demo)

### how to recode the categorical (factor) variables

### we want to convert the variable gender as follows
### Male = 1, Female = 2

### a new variable gender2 will be created

### first we will use the brackets (base R)

demo$gender2[demo$gender == "Male"] = "1"
demo$gender2[demo$gender == "Female"] = "2"

View (demo)

##########

### we can do the same type of recoding with the plyr package, function revalue

### load the package

require(plyr)

### let's create a new variable, gender3

demo$gender3 = revalue(demo$gender, c("Male"="1", "Female"="2"))

View(demo)

### important: if the variable to recode is not a factor
### we must convert it into a factor before recoding

demo$gender = factor(demo$gender)

### to recode into the same variable (without creating a new one)
### we just use the same variable name in both sides of the revalue function

demo$gender = revalue(demo$gender, c("Male"="1", "Female"="2"))

View(demo)
