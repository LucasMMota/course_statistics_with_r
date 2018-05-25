hw <- read.csv("hw.csv")

View(hw)

##########
### how to build scatterplot charts with ggplot2 
##########

### we will create a scatterplot with the variables
### height and weight

### load the package

require(ggplot2)

### create the plot

ggplot()+geom_point(data=hw, aes(x=height, y=weight))+
  scale_x_continuous(limits=c(150,193))

#########

### build a clustered scatterplot
### by gender

lgd <- hw$gender

### get points of different colors

ggplot()+geom_point(data=hw, aes(x=height, y=weight, color=lgd))+
  scale_x_continuous(limits=c(150,193))

### get points of different shapes

ggplot()+geom_point(data=hw, aes(x=height, y=weight, shape=lgd))+
  scale_x_continuous(limits=c(150,193))

### get points of both different shapes and colors

ggplot()+geom_point(data=hw, aes(x=height, y=weight, shape=lgd, color=lgd))+
  scale_x_continuous(limits=c(150,193))

###########

### add a trendline to the scatterplot

### create a linear model
### with weight as the dependent variable and height as the explainer

model <- lm(weight~height, data=hw)

print(model)

### get the minimum and the maximum height

minh <- min(hw$height)

maxh <- max(hw$height)

### create a new vector height

height <- c(minh, maxh)

print(height)

### predict the weight based on the height, with the model above

fit <- predict(model, data.frame(height))

print(fit)

### create a data frame with the line end points

endpoints <- data.frame(height, fit)

View(endpoints)

### build the scatter plot with trend line

ggplot()+
  geom_point(data=hw, aes(x=height, y=weight))+
  geom_line(data=endpoints, aes(x=height, y=fit), color="red", size=1)


