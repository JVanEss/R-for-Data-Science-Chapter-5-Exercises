select(flights, year, month, day)
select(flights, year:day)
select(flights, -(year:day))
?select
rename(flights, tail_num = tailnum)
select(flights, time_hour, air_time, everything())

#5.4.1 Exercises
#Exercise 1
select(flights, dep_time, dep_delay, arr_time, arr_delay)
select(flights, dep_time, dep_delay: arr_time, arr_delay)
select(flights, dep_time:arr_delay, -(sched_dep_time), -(sched_arr_time))
#Exercise 2
select(flights, dep_time, dep_time)
#it only shows it once - it ignores the redundancy
#Exercise 3
?one_of
#matches variable name in a character vector
vars <- c("year", "month", "day", "dep_delay", "arr_delay")
vars
select(flights, one_of(vars))
#Exercise 4
select(flights, contains("TIME"))
#Yes - I was expecting it not to pull any data since "TIME" is in all caps.
#ignores case if TRUE