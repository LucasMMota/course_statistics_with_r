demo <- read.csv("demographics.csv")

View(demo)

##########
### how to create cross-tables
### with the CrossTable function (package gmodels) 
##########

### we will build a cross table with the variables gender and carcat (car category)

### load the package

require(gmodels)

CrossTable(demo$gender, demo$carcat, prop.chisq = FALSE)  ### we don't want the chi square contributions

### some other options of the CrossTable function

CrossTable(demo$gender, demo$carcat, digits=3, expected=TRUE, prop.r=TRUE, prop.c=TRUE,
           prop.t=TRUE, prop.chisq=TRUE, chisq = FALSE, fisher=FALSE, mcnemar=FALSE,
           missing.include=FALSE)

### digits: number of decimals

### expected: shows the expected frequencies

### prop.r: shows the row proportions

### prop.c: shows the column proportions

### prop.chisq: shows the chi square contributions

### chisq: computes the chi square test for association

### fisher: computes the Fisher exact test

### mcnemar: computes the McNemar test (for the 2x2 tables only)

### missing.include: if TRUE removes the unused factor levels


### this table will show the observed counts only

CrossTable(demo$gender, demo$carcat, digits=3, expected=FALSE, prop.r=FALSE, prop.c=FALSE,
           prop.t=FALSE, prop.chisq=FALSE, chisq = FALSE, fisher=FALSE, mcnemar=FALSE,
           missing.include=FALSE)
