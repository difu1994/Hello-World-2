#Use single bracket operator to subset an object, get the same class back
#Double bracket operator does not necessarily give same class back

#Subestting - basics
a <- c("a", "b", "c", "c", "d", "a")
a[1]#use single square brackets to call the element in the vector
a[2]
a[3]

a1 <- a[1:4]
a2 <- a > "a"    #This is a logical vector 
a3 <- a[a > "a"] #can input conditional logical terms in subsets

#Subsetting - lists
b <- list(foo = 1:4, bar = 0.6) #Each numeric element in list can have many numbers
c <- list(foo = 1:4, TRUE, 0.5, "gg")

b1 <- b[1] #returns a list, since b is a list
b2 <- b[[1]] #Does not return a list, but rather a vector
b3 <- b["bar"] #Use name of element in list to call the element instead
b4 <- b[["bar"]]

#For extracting multiple elements in list, use single bracket

c1 <- c[c(1, 4)]

#For extracting element in list in list

d <- list(e = list(10, 12, 14), b = c(3.14, 2.81))
#List with two elements comprising of list and vector

d1 <- d[[c(1, 3)]]#third element in first element

d2 <- d[[1]][[3]]#same as above d1


#Subsetting - Matrix

g <- matrix(1:6, 2, 3) # 2x3 matrix from 1 to 6 

g1 <- g[1, 2] # row, column sequence
g2 <- g[2, 3] # single bracket out one single element of matrix is vector not matrix
g21 <- g[2, 3, drop = FALSE] # Use Drop argument to retain matrix form of one element


g3 <- g[ , 2] # second column of matrix
g31 <- g[ , 2, drop = FALSE] # Use Drop argument to retain matrix form



#Removing NA values

j <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(j) #create logical vector which tells where the NAs are
j1 <- j[!bad] #"!"denotes oppostie of "bad"

m <- c(1, 2, NA, 4, NA, 5)
n <- c("a", NA, "c", NA, NA, "d")
good <- complete.cases(m, n) #takes Venn intersections where all objects examined are non NA

#complete.cases function can also be used for data frames


m1 <- m[good]
n1 <- n[good]


#COUNTING

#table(unlist("key in object name in which to evaluate elements))

j100 <- table(unlist(j))
c100 <- table(unlist(c))

