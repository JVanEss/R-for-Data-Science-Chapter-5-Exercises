arrange(flights, year, month, day)
arrange(flights, desc(dep_delay))
df <- tibble(x = c(5, 2, NA))
arrange(df, x)
arrange(df, desc(x))

#5.3.1 Exercises
#Exercise 1
arrange(flights, desc(is.na(dep_time)), desc(is.na(dep_delay)), desc(is.na(arr_time)), desc(is.na(arr_delay)), desc(is.na(tailnum)), desc(is.na(air_time)))
#Exercise 2
arrange(flights, desc(dep_delay))
arrange(flights, dep_time)
#Exercise 3
arrange(flights, air_time)
#Exercise 4
arrange(flights, distance)
arrange(flights, desc(distance))