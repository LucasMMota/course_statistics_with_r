demo <- read.csv("demographics.csv")

View(demo)

##########
### how to build cumulative frequency line charts with ggplot2 
##########

### we will create a cumulative frequencies line for the variable income

### load the packages

require(ggplot2)

require(plyr)   ### we need the count function

### create a data frame with the unique income values

mydata <- count(demo, 'income')

View(mydata)

### compute the cumulative counts and percentages

cumul <- cumsum(mydata$freq)

cumperc <- cumul/nrow(demo)

### add the cumulative frequencies column to the iniatial mydata matrix

mydata <- cbind(mydata, cumperc)

View(mydata)

### plot the cumulative frequencies line (smooth)
  
ggplot()+geom_line(data=mydata, aes(x=income, y=cumperc))

### OR plot the stepped line
  
ggplot()+geom_step(data=mydata, aes(x=income, y=cumperc))

#################

### create grouped cumulative frequencies lines
### we will build a cumulative frequencies line chart for the variable income
### for each gender group

## first we create two databases, by gender, using the brackets

male <- demo[demo$gender=="Male",]

female <- demo[demo$gender=="Female",]

View(male)

View(female)

### for the male data frame, we get the unique income values
### then compute the cumulative relative frequencies

mydata_male <- count(male, "income")

cumulm <- cumsum(mydata_male$freq)

cumpercm <- cumulm/nrow(male)

### add the cumulative relative frequencies column

mydata_male <- cbind(mydata_male, cumpercm)

View(mydata_male)

### the same for the female data frame

mydata_female <- count(female, "income")

cumulf <- cumsum(mydata_female$freq)

cumpercf <- cumulf/nrow(female)

mydata_female <- cbind(mydata_female, cumpercf)

View(mydata_female)

### now we can build the chart

ggplot()+geom_line(data=mydata_male, aes(x=income, y=cumpercm), color="red")+
  geom_line(data=mydata_female, aes(x=income, y=cumpercf), color="blue")

### for a stepped line we must replace geom_line with geom_step

### add a legent to the chart

lgd <- scale_color_manual("Legend", values=c(Male="red", Female="blue"))

ggplot()+
  geom_line(data=mydata_male, aes(x=income, y=cumpercm, color="Male"), size=1.3)+
  geom_line(data=mydata_female, aes(x=income, y=cumpercf, color="Female"), size=1.3)+
  lgd



