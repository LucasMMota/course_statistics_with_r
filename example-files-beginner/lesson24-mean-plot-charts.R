demo <- read.csv("demographics.csv")

View(demo)

##########
### how to build mean plot charts with ggplot2 
##########

### we will create a mean plot representing the average income
### for each gender category

### load the package

require(ggplot2)

### create the dataframe with the means of the gender groups

aggdata <- aggregate(demo$income, by=list(demo$gender), FUN=mean)

View(aggdata)

### draw the plot
### the x axis is defined as discrete, with convenient labels

ggplot()+geom_line(data=aggdata, aes(x=(1:2), y=aggdata$x))+
  scale_x_discrete(name="Gender", labels=c("Female", "Male"))+
  scale_y_continuous(name="Income", limits=c(72, 85))

### change line color and thickness

ggplot()+geom_line(data=aggdata, aes(x=(1:2), y=aggdata$x), color="red", size=1.3)+
  scale_x_discrete(name="Gender", labels=c("Female", "Male"))+
  scale_y_continuous(name="Income", limits=c(72, 85))

##########

### build the chart with a polytomous factor
### (we'll get a broken line)

### the factor will be education level (educ)

aggdata <- aggregate(demo$income, by=list(demo$educ), FUN=mean)

View(aggdata)


ggplot()+geom_line(data=aggdata, aes(x=(1:5), y=aggdata$x))+
  scale_x_discrete(name="Education Level", labels=c("College degree", "Did not complete high school", "High school degree", "Post-undergraduate degree", "Some college"))+
  scale_y_continuous(name="Income", limits=c(64, 116))

##############

### build a grouped mean plot
### the grouping variable will be the car category (carcat)

## create three data frames for the economy, standard and luxury cars

demo_ec <- demo[demo$carcat=="Economy",]

demo_st <- demo[demo$carcat=="Standard",]

demo_lu <- demo[demo$carcat=="Luxury",]

# compute the mean income for each education level and for each data frame (car category)

agg_ec <- aggregate(demo_ec$income, by=list(demo_ec$educ), FUN=mean)

agg_st <- aggregate(demo_st$income, by=list(demo_st$educ), FUN=mean)

agg_lu <- aggregate(demo_lu$income, by=list(demo_lu$educ), FUN=mean)

View(agg_ec)

View(agg_st)

View(agg_lu)

## plot the three lines on the same graph

ggplot()+
  geom_line(data=agg_ec, aes(x=(1:5), y=agg_ec$x), color="green")+
  geom_line(data=agg_st, aes(x=(1:5), y=agg_st$x), color="red")+
  geom_line(data=agg_lu, aes(x=(1:5), y=agg_lu$x), color="blue")+
  scale_x_discrete(name="Education Level", labels=c("College degree", "Did not complete high school", "High school degree", "Post-undergraduate degree", "Some college"))+
  scale_y_continuous(name="Income", limits=c(15, 220))


## add legend

lgd <- scale_color_manual(name="Legend", values=c(Economy="green", Standard="red", Luxury="blue"))

ggplot()+
  geom_line(data=agg_ec, aes(x=(1:5), y=agg_ec$x, color="Economy"))+
  geom_line(data=agg_st, aes(x=(1:5), y=agg_st$x, color="Standard"))+
  geom_line(data=agg_lu, aes(x=(1:5), y=agg_lu$x, color="Luxury"))+
  scale_x_discrete(name="Education Level", labels=c("College degree", "Did not complete high school", "High school degree", "Post-undergraduate degree", "Some college"))+
  scale_y_continuous(name="Income", limits=c(15, 220))+lgd

### N.B. in the code above, the color argument is found in the aesthetics section


