demo <- read.csv("demographics.csv")

View(demo)

##########
### how to build boxplot charts with ggplot2 
##########

### we will create a boxplot for the variable income
### for each gender category

### load the package

require(ggplot2)

### create the plot

ggplot()+geom_boxplot(data=demo, aes(x=gender, y=income))+
  scale_x_discrete(labels=c("Female", "Male"))

### N.B. if the grouping variable is not a factor
### make sure you convert it into a factor first

### set the color of the outliers
  
ggplot()+geom_boxplot(data=demo, aes(x=gender, y=income), outlier.colour="red")+
  scale_x_discrete(labels=c("Female", "Male"))

### set the shape of the outliers

ggplot()+geom_boxplot(data=demo, aes(x=gender, y=income), outlier.colour="red", outlier.shape=4)+
  scale_x_discrete(labels=c("Female", "Male"))

### add a legend

lgd <- demo$gender

ggplot()+geom_boxplot(data=demo, aes(x=gender, y=income, fill=lgd), outlier.colour="red")+
  scale_x_discrete(labels=c("Female", "Male"))

###########

### build a clustered boxplot
### we will group the boxplots by gender and marital status

### the legend will represent the two marital statuses

lgd <- demo$marital

ggplot()+geom_boxplot(data=demo, aes(x=gender, y=income, fill=lgd))+
  scale_x_discrete(labels=c("Female", "Male"))


