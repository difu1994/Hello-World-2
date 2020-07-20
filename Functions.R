#Define a summation function
add2 <- function(a, b) {
  a + b
}

#function that returns number greater than 10
above10 <- function(c) {
  logic <- c > 10 #Use logic to select terms in vectors/matrices/lists etc..
  c[logic]
}

#function that returns number greater than e (setting default value at 10)
above <- function(d, e = 10) {
  logic2 <- d > e
  d[logic2]
}

x = 1:20

y <- above(x, 5)


#function that calculates column mean of matrix/data frame
columnmean <- function(a, removeNA = TRUE) {
  nc <- ncol(a)
  means <- numeric(nc)    #creates numeric vector with length "nc"
  for (i in 1:nc) {       #use for as number of columns can be determined
    means[i] <- mean(a[ ,i], na.rm = removeNA) 
    #ith term in means vector equals mean of ith column in a
    #removeNA variable indicates whether NA should be included
  }
  means #output 'means' vector
}

a = matrix(1:10, 5, 2)
a[1, 2] = NA #set one value in matrix as NA
logic <- a > 5
z1 <- columnmean(a, TRUE) #NA is removed
z2 <- columnmean(a, FALSE) #if NA not removed, mean is NA



#function can have many inputs/arguments
#when specifying, either stick to order or just name the arguments and put "=" sign

args(paste) #args displays the syntax of the function



#R uses lexical scoping
#R searches functions based on environment priority and calls the function that appears first
#Don't name functions the same as default ones
#FREE variables are searched for in the environment in which the function is defined!!!!!
#if variable is not found, search is continued in parent function
#Important for defining functions in functions
#In R, calling environment is the parent frame
#Dynamic scoping search variables in calling environment rather than defining environment

#Lexical scoping

make.power <- function(n) { #input of this function is n
  pow <- function(m) {
    m^n                     #value of n is stored in main function environment
  }
  pow                       #output is function pow with the value n defined
}

cube <- make.power(3)       #function pow with n value of 3 in pow's defining environment
square <- make.power(2)     #function pow with n value of 2

cube(3)                     #Define m variable of function pow
square(3)


#How to determine function environment

env1 <- ls(environment(cube))         #ls used to determine objects in function environment
env1n <- get("n", environment(cube))  #get used to determine value of objects in environment

env2 <- ls(environment(square))
env2n <- get("n", environment(square))

