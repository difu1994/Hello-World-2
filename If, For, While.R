#Control structures: If
#if -- do something, else if -- do something else, else -- do something else
#else clause not always necessary


a = 1
if(a > 3) {
  
  b <- 10
  
} else {
  
  b <- 0
  
}


#for loops executes a loop for fixed number of times
#for loops take interator variable i and assigns it successive values
#for "variable" in"vector", "variable" is assigned on the spot

for (i in 1:10) {
  print("noob")
}

c <- c("a", "b", "c", "d")

for (i in 1:4) {
  print(c[i])
}

#OR, similarly

for (letter in c) {
  print(letter)
}

#Use of NEXT command
c1 <- list() #create empty list
c2 <- vector() #create empty vector
for (i in 1:4) {
  if (i < 3) { 
    next   #skip first 2 iterations
    }
  c1[i] <- c[i] #input data into vector/list
  c2[i] <- c[i]
}




#Nested for loop (i.e. for loop in for loop)

d <- matrix(1:6, 2, 3)

for (i in seq_len(nrow(d))) {    #seq_len function extracts length of object
  for (j in seq_len(ncol(d))) {
    print(d[i, j])
  }
}



#while loops execute a loop while a logical condition is true

count <- 0

while (count < 10) {
  print(count)
  count <- count + 1
}


#combining while and if
#&& represents AND logic
e <- 5
while (e > 3 && e <= 10) {
  print(e)
  coin<- rbinom(1, 1, 0.5) #binomial function #random walk
  
  #e value can go either up or down
  
  if (coin == 1) {
    e <- e + 1
  } else {
    e <- e - 1
    }
}

#Note: If loop happens only once whereas while loop continues until condition false

#repeat loop checks the condition at the end of each iteration
#while loop checks it at the beginning of each iteration
#So repeat loop executes at least one iteration, while loop may not execute any iterations if the condition is not fulfilled. That's the difference.


