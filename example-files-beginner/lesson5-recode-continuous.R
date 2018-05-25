demo <- read.csv("demographics.csv")

View(demo)

### how to recode a continous variable into a factor

### we want to create a categorical variable as follows
### subjects with income under 200 - low income
### subjects with income of 200 and more - high income

### a new variable, incat (income category), will be created

demo$incat[demo$income<200] = "Low income"
demo$incat[demo$income>=200] = "High income"

View(demo)

### now we want to create three groups by income
### low income - under 150
### medium income - between 150 and 300
### high income - 300 and more
### so we will have two cut points: 150 and 300

### a new variable, incat2, will be created

demo$incat2 = cut(demo$income, breaks=c(-Inf, 150, 300, Inf), labels=c("Low income", "Medium income", "High income"))

View(demo)

### by default, the ranges are open on the left, and closed on the right 
### namely (-Inf,150], (150, 300] and (300, Inf)
### to get it conversely, use the option right=FALSE

demo$incat2 = cut(demo$income, breaks=c(-Inf, 150, 300, Inf), labels=c("Low income", "Medium income", "High income"), right = FALSE)

