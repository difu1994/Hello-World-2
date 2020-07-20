x <- Sys.time()
x

p <- as.POSIXlt(x)         #POSIXlt is a class for time
n <- names(unclass(p))     #unclass used to unclassify POSIXlt special format
m <- p$sec                 #only $sec works [sec] or [[sec]] does not work


i <- as.POSIXct(x)        #POSIXct stores number of seconds from 1970-01-01
j <- unclass(i)           #names(j) is NULL as it doesn't have a name like POSIXlt

#random list
a <- list(a = "a", b = "b", c = 2, d = TRUE)


#Convert characters to time format

data <- c("January 10, 2019 10:50", "December 19, 2020 22:05")

z <- strptime(data, "%B %d, %Y %H:%M")
#Convert to POSIXlt type by stating format of time entered in data as argument 


#Find difference in dates
#Must be applied to same class either POSIXlt or POSIXct

y <- z[1]

diff <- x - y         #'timediff' special data class







