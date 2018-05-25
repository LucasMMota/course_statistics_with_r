#Descriptive Statistics
#Exercise #1
#In the file bankloan.csv, generate the main statistical indicators for the
#variable balance, using the functions available in Base R.
bankloanDB = read.csv("/Users/lucas/Documents/cursos/Statistics_with_R/csv-data-frames/bankloan.csv")
View(bankloanDB)

require(pastecs)
stat.desc(bankloanDB$balance)

#Exercise #2
directmail = read.csv("/Users/lucas/Documents/cursos/Statistics_with_R/csv-data-frames/directmail.csv")
View(directmail)
#In the file directmail.csv, generate the main statistical indicators for the
#variable age, using the function describe in the psych package.

mean(demo$age)
### standard deviation and variance
sd(demo$age)
var(demo$age)
### minimum, maximum and range
min(demo$age)
max(demo$age)
range(demo$age)
max(demo$age) - min(demo$age)
### median
median(demo$age)
### quartiles
quantile(demo$age)

#Exercise #3
bankloan = read.csv("/Users/lucas/Documents/cursos/Statistics_with_R/csv-data-frames/bankloan.csv")
#In the file bankloan.csv, generate the main statistical indicators for the
#variable age, using the function statdesc available in the pastecs package.
require(psych)
describe(bankloan$age)

#Exercise #4
library(e1071)
icecream = read.csv("/Users/lucas/Documents/cursos/Statistics_with_R/csv-data-frames/icecream.csv")
#In the file icecream.csv, determine the skewness and the kurtosis indicators for the variable icecream. 
View(icecream)
skewness(icecream$icecream)
kurtosis(icecream$icecream)
#hist(icecream$icecream)

#Then, for the same variable, compute the 7%,
#38% and 72% percentiles and find out the mode.
quantile(icecream$icecream, probs = c(0.07, 0.38, 0.72))
mlv(icecream$icecream, method="mfv")

#Exercise #5
math = read.csv("/Users/lucas/Documents/cursos/Statistics_with_R/csv-data-frames/math.csv")
#Perform the same operations as in the exercise #4 above, but for the
#variable grade1 in the math.csv data file.
quantile(math$grade1, probs = c(0.07, 0.38, 0.72))
mlv(math$grade1, method="mfv")

#Exercise #6
hw = read.csv("/Users/lucas/Documents/cursos/Statistics_with_R/csv-data-frames/hw.csv")
View(hw)
require(doBy)
#In the file hw.csv, compute the main statistical indicators for the subjects???
#height, separately by men and women, using the appropriate function in the
#DoBy package.
func <- function(x) {descStat(x, na.rm=TRUE)}
summaryBy(height~gender, data=hw, FUN=func)

#Exercise #7
#In the file hw.csv, compute the main statistical indicators for the subjects???
#weight, separately by men and women, using the DescribeBy package.
func <- function(x) {descStat(x, na.rm=TRUE)}
summaryBy(weight~gender, data=hw, FUN=func)

#Exercise #8
directmail = read.csv("/Users/lucas/Documents/cursos/Statistics_with_R/csv-data-frames/directmail.csv")
summary(directmail)
#In the file directmail.csv, compute the main statistical indicators for the
#subjects??? age, by education levels, using the function aggregate in the Stats
#package.
func <- function(x) {descStat(x, na.rm=TRUE)}
aggregate(directmail$age, by=list(directmail$educ), FUN=func)
