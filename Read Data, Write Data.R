#read.table and read.csv used to read tabular data
#Contain data that are stored in kind of rows and columns format and return a data frame in R
#read.csv separates data by comma, read.table separates data by space

##read.table HELP page
##https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/read.table

a <- read.csv('Appeal.txt', header = TRUE, row.names = c(1))
b <- read.csv('Appeal.txt', FALSE)
c <- read.table('Dee.txt', FALSE)
d <- read.table('Dee.txt', TRUE)

#Quick and dirty way to figure out classes of each column
#Use the extracted class information to speed up process of reading large files
initial <- read.table('Dee.txt', nrows = 100)
classes <- sapply(initial, class)
tabAll <- read.table('Dee.txt', colClasses = classes)


#Textual formats
#dump() and dput()
#dput() takes an arbitrary R object and create a R code that will reconstruct the object in R
#call dput directly to see what is stored

e <- data.frame(a = c(1, 2), b = c("a", "d")) # two columns each with 2 rows

#store as R file using dput but only for single object

dput(e, file = "y.R") #use file = "" to specify what to save as
 
f <- dget("y.R") #use dget to open the dput file

#dump() is similar to dput but can be used on multiple R objects
 
g <- "foo"
h <- data.frame(a = 1, b = "a")
dump(c("g", "h"), file = "data.R")
 
j <- source("data.R")




###USE str("type a R function here") to view the argument syntax of the function




#Building connections to files OR urls

con <- url("https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/read.table", "r")
#establish connection with chosen URL
x <- readLines(con, n = 10) #n denoted number of lines to read
#readlines from connection into R object "x"




