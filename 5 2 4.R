library(nycflights13)
library(tidyverse)
nycflights13::flights
View(flights)

#Variable Types:
#int = integers
#dbl = doubles or real numbers
#chr = character vectors or strings
#dttm = date + tie
#lgl = logical - vectors that are TRUE or FALSE
#fctr = factors - categorical variables with fixed possible values
#date = date

#Key dplyr functions:
#filter = pick observarions by values
#arrange = reorder rows
#select = pick variables by names
#mutate = create new variables with functions of existing variables
#summarise = collapse many values down to a summary
#group_by = operates function on group-by-group instead of entire dataset

filter(flights, month == 1, day == 1)
jan1 <- filter(flights, month == 1, day == 1)
jan1
(dec25 <- filter(flights, month == 12, day == 25))
sqrt(2) ^ 2 == 2
1 / 49 * 49 == 1
near(sqrt(2) ^ 2, 2)
near(1 / 49 * 49, 1)
filter(flights, month == 11 | month == 12)
nov_dec <- filter(flights, month %in% c(11, 12))
nov_dec
filter(flights, !(arr_delay > 120 | dep_delay > 120))
filter(flights, arr_delay <= 120, dep_delay <= 120)
df <- tibble(x = c(1, NA, 3))
df
filter(df, x > 1)
filter(df, is.na(x) | x > 1)

#5.2.4 Exercises
#Exercise 1.1
filter(flights, arr_delay <= 120)
#Exercise 1.2
filter(flights, dest == "IAH" | dest == "HOU")
#Exercise 1.3
filter(flights, carrier == "UA" | carrier == "AA" | carrier == "DL")
#Exercise 1.4
filter(flights, month == 7 | month == 8 | month == 9)
#Exerise 1.5
filter(flights, arr_delay > 120 | dep_delay < 0)
#Exercise 1.6
filter(flights, dep_delay >= 60 | arr_delay <30)
#Exercise 1.7
filter(flights, dep_time >= 000, dep_time <= 600)
#Exercise 2
#Chooses values in a specific range; the previous answer could have been:
filter(flights, between(dep_time, 000, 600))
#Exercise 3
View(filter(flights, is.na(dep_time)))
#dep_delay; arr_time; arr_delay; air_time
#the flights were potentially cancelled
#Exercise 4
#Because I explicitely asked for NA values