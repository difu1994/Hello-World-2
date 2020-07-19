#Import dataset into r as a data frame
dataset <- read.csv('hw1_data.csv', TRUE)

#Column names of data frame
columnnames <- colnames(dataset)

#Extract first 6 rows of data frame
firstsix <- dataset[1:6, ]

#total number of rows
totalrows <- nrow(dataset)

#Extract last six rows
lastsix <- dataset[(totalrows-5):totalrows, ]

#Missing values in "Ozone" column
missingozone <- is.na(dataset[ , "Ozone"])
t <- table(unlist(missingozone))

#Mean of ozone
meanozone <- mean(dataset[ , "Ozone"], na.rm = TRUE) #na.rm argument to remove NA values

#Extract rows where Ozone larger than 31 Temp larger than 90
subdata <- subset(dataset, Ozone > 31 & Temp> 90) #subset function followed by conditions

meansolarr <- mean(subdata[ , "Solar.R"])

#Extract month is 6
subdata2 <- subset(dataset, Month == 6)

meantemp <- mean(subdata2[ , "Temp"])

#Extract month is 5
subdata3 <- subset(dataset, Month == 5)

maxozone <- max(subdata3[ , "Ozone"], na.rm = TRUE)