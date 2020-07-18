#Hello world 
## This is a markdown file


x <- -5
y <- 1:20

#[1]in console indicates 1st element of vector/sequence
#[n]in console indicates nth element of vector/sequence

#c() used to create vector of objects under same class by force (aka implicit coercion)
#class of objects denoted after each line
#order: logical < integer < numeric < complex < character < list
a <- c(0.5, 0.6) #numeric
b <- c(TRUE, FALSE) #logical
c <- c(T, F) #logical
d <- c("a", "b", "c") #character
e <- 9: 29 #integer
f <- c(1+0i, 2+4i) #complex

f1 <- c(TRUE, 0.5, "a") #coercion follows highest order
f2 <- c(TRUE, 3.4, 4.2) #coercion follows highest order

#creating empty vector of class "numeric"
g <- vector("numeric", length = 10)


#convert integer to numeric/character/logical (explicit coercion)
e1 <- as.numeric(e)
e2 <- as.character(e)
e3 <- as.logical(e)

#create a list, which can include multiple classes, denoted by double bracket when called
#opposite of coercion
l <- list(1, "a", TRUE, 1+4i)
l1 <- list(1:2, 3:4)

#create a matrix
#matrix must be same class, MUST BE NUMERIC/INTEGER
#matrices are filled in column order not row
m <- matrix(nrow = 2, ncol = 3)

n <- dim(m)

o <- matrix(1:6, nrow = 2, ncol = 3)


#create vector of integers and transform it to matrix by assigning a dimension
p <- 1:16
dim(p) <- c(8,2)

#c-bind and r-bind (c for column and r for row)
q <- 1:5
r <- 92:96
s <- rbind(q,r)

#end

