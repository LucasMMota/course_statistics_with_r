demo <- read.csv("demographics.csv")

View(demo)

##########
### how to build a histogram with ggplot2
##########

### we will build the histogram for the variable income

### load the package

require(ggplot2)

### build the histogram
### on the y axis we will represent the counts (absolute frequencies)

ggplot()+geom_histogram(data=demo, aes(x=income))

### change the bins color and border

ggplot()+
       geom_histogram(data=demo, aes(x=income), fill="red", color="black")

### represent the density on the y axis (relative frequencies)
  
ggplot()+
  geom_histogram(data=demo, aes(x=income, y=..density..), fill="red", color="black")

##########

### create a facet grid (multiple histograms)
### we will create a histogram for each combination of the variables 
### gender and marital status

ggplot()+
  geom_histogram(data=demo, aes(x=income, y=..density..), fill="red", color="black")+
  facet_grid(gender~marital)

### create multiple histograms on the same chart
### we will build a histogram for each gender category

ggplot()+
  geom_histogram(data=demo, aes(x=income, y=..density.., fill=gender), color="black")

### N. B. the "fill" variable must be a factor

