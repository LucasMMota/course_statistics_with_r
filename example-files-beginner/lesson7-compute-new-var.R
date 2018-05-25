math <- read.csv("/Users/lucas/Documents/cursos/Statistics_with_R/csv-data-frames/math.csv")
View(math)

### how to compute a new variable
### we will create a variable that stores the difference between the two grades
math$diff = math$grade2 - math$grade1

### another variable that stores the average of the two grades
math$avg = (math$grade1 + math$grade2) / 2
