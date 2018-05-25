demo <- read.csv("demographics.csv")

View(demo)

##########
### how to build column charts with ggplot2 
##########

### we will create a column chart representing the average income
### for each education level

### load the package

require(ggplot2)

### build the chart

ggplot(demo, aes(x=educ, y=income, fill=educ))+ 
  stat_summary(fun.y=mean, geom="bar")

### if you want the same color for the bins

ggplot(demo, aes(x=educ, y=income))+ 
  stat_summary(fun.y=mean, geom="bar", fill="red")

### N.B. if the grouping variable is not a factor,
### we must convert it into a factor

### to create a clustered bar chart (by the variable gender)
### position_dodge will put the columns side by side


ggplot(demo,aes(x=educ, y=income, fill=gender)) + 
  stat_summary(fun.y=mean, geom="bar", position=position_dodge())

### to stack the columns we use position_stack

ggplot(demo,aes(x=educ, y=income, fill=gender)) + 
  stat_summary(fun.y=mean, geom="bar", position=position_stack())


