#Factor is a special type of vector
#Used to create, to represent categorical data
#sort of like assigns an integer behind a factor for easy classification

a <- factor(c("yes", "yes", "no", "yes", "no")) #levels are "no" and "yes"
b <- table(a) #frequency of how many in each levels there are
c <- unclass (a) #makes factor into integer

#factor levels assigned in alphabetical order by default "no"<"yes"
#use levels argument to set customised sequence

d <- factor(c("yes", "yes", "no", "yes", "no"), levels = c("yes", "no"))
  
e <- unclass(d)

#Missing values denoted by NA or NaN
#NA has different classes even though they all appear as NA
#is.na() used to test objects if they are NA
#is.nan() used to test for NaN

f <- c(1, 2, NA, 10, 3)
f1 <- is.na(f) #third value is indeed NA
f2 <- is.nan(f) #No values are NaN

g <- c(1, 2, NA, NaN, 3)
g1 <- is.na(g) #NaN is an NA
g2 <- is.nan(g) #NA is not NaN


#Data frames are used to store tabular data (special type of list)
#Every element of list must be same length and acts like the column
#Each element can be different class, unlike matrix

#create data frame in columns, name columns foo and bar
#each column of data frame must be same data type
#Naming of data frame 
h <- data.frame(foo = 1:4, bar = c(T, T, F, F), nux = c(9, TRUE, 10, 5))
h1 <- nrow(h) #no. of rows
h2 <- ncol(h) #no. of columns

i <- data.frame(1:4, c(T, T, F, F)) #data frame without column name


#NAMING
#Naming objects in coercion vectors

k <- 1:3
k1 <- names(k) <- c("foo", "bar", "norf")

#Naming objects in lists
#Default name in lists are [[1]], [[2]] etc.
#doesn't require "=" sign for list without custom naming
m <- list(look = 1, here = TRUE, now = "3")

#Naming matrices

p <- matrix(1:4, nrow = 2, ncol = 2)
p1 <- dimnames(p) <- list(c("a", "b"), c("c", "d")) #row followed by column names


#SUMMARY
#Data Frame (Tabular Data) equivalent to Matrix but can store different classes for each COL
#List equivalent to vectors but can store different classes
#Coercion used to make all objects the same class
#List allows different class to exist in same list
#Names can be assigned to vectors and lists, ALSO matrices and Data Frame
#Factors is a special vector that uses integers to store factors as categoric data

#end


