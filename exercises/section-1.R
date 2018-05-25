#Exercise #1
#Using the file bankloan.csv, filter the data according to the conditions
#below, using brackets, the subset command and the Dplyr package.

bankloanDB = read.csv("/Users/lucas/Documents/cursos/Statistics_with_R/csv-data-frames/bankloan.csv")
View(bankloanDB)
summary(bankloanDB)

#a. married subjects only
part1 <- bankloanDB[bankloanDB$marital=="married",]
View(part1)

#b. married subjects with secondary and tertiary education level
part2 <- bankloanDB[bankloanDB$marital == "married" & bankloanDB$education %in% c("secondary", "tertiary"),]
View(part2)

#c. subjects over 40
part3 <- bankloanDB[bankloanDB$age > 40,]
View(part3)


#d. single subjects under 35
part4 <- bankloanDB[bankloanDB$age < 35,]
View(part4)


#e. subjects who have a loan and a balance over 1000
part4 <- bankloanDB[bankloanDB$loan == "yes" & bankloanDB$balance > 1000,]
View(part4)


#Exercise #2
#Using the file bankloan.csv:
bankloanDB = read.csv("/Users/lucas/Documents/cursos/Statistics_with_R/csv-data-frames/bankloan.csv")
View(bankloanDB)

#a. recode the variable marital as follows: married ??? 1, single ??? 0 

#bankloanDB$marital = factor(bankloanDB$marital)
#bankloanDB$marital[bankloanDB$marital == "married"] = "1"
#bankloanDB$marital[bankloanDB$marital == "single"] = "0"
bankloanDB$marital2 = revalue(bankloanDB$marital, c("married"="1", "single"="0"))

#b. recode the variable loan as follows: yes ??? 1, no ??? 0
bankloanDB$loan2 = revalue(bankloanDB$loan, c("yes"="1", "no"="0"))

#c. recode the variable balance as follows: under 500 ??? 1, between 501 and 1000 ??? 2, over 1000 ??? 3.
#demo$incat2 = cut(demo$income, breaks=c(-Inf, 150, 300, Inf), labels=c("Low income", "Medium income", "High income"))
bankloanDB$balance2 = cut(bankloanDB$balance, breaks=c(-Inf, 500, 1000, Inf), labels=c("1", "2", "3"))
View(bankloanDB)

#Exercise #3
#Sort the data frame bankloan:
bankloanDB = read.csv("/Users/lucas/Documents/cursos/Statistics_with_R/csv-data-frames/bankloan.csv")
View(bankloanDB)

#a. by age, ascending
bl2 <- bankloanDB[order(bankloanDB$age),]

#b. by balance, descending
bl2 <- bankloanDB[order(-bankloanDB$balance),]

#c. by age descending and by balance ascending
bl2 <- bankloanDB[order(-bankloanDB$age, bankloanDB$balance),]
View(bl2)

#Exercise #4
#In the data file brand.csv, create a new variable by averaging 
#the following variables: quality, problems and ads.
brandBD = read.csv("/Users/lucas/Documents/cursos/Statistics_with_R/csv-data-frames/brand.csv")
brandBD$avg = (brandBD$quality + brandBD$problems + brandBD$ads) / 3
View(brandBD)
