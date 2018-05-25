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
