#Advanced Data Structures.
#5.1 data.frames
#In Statistical terms, each column is a variale and each row is an observation.

# Let's create a basic data.frame using some of the vectors

x <- 10:1
x

y <- -4:5
y

q <- c("Hockey", "Football", "Baseball", "Curling", "Rugby", "Lacrosse", "Basketball"
       , "Tennis", "Cricket", "Soccer")
q

theDF <- data.frame(x, y, q)
theDF

#This creates a 10 x 3 data.frame consisting of those three vectors. Notice the names
#of theDF are simply the variables. We could have assigned names during the creation process.
theDF <- data.frame(First = x, Second = y, Sport = q)
theDF

nrow(theDF)
ncol(theDF)
dim(theDF)
names(theDF)
names(theDF)[3]
rownames(theDF)

rownames(theDF) <- c("one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten")
rownames(theDF)

#set them back to the generic index

rownames(theDF) <- NULL
rownames(theDF)

#Usually a data.frame has far too many rows to print them all to the screen.
#Thankfully, the head function prints out only the first few rows.

head(theDF)

head(theDF, n = 7)

tail(theDF)

class(theDF)

#theDF$Sport will give the third column in the theDF. That allows us to specify one particular column by name.
theDF$Sport

#Similar to vectors, data.frames allow us to access individual elements by their position
#using square brackets, but instead of having one position two are specified.
#first is the row number and the second is the column number.
theDF[3,2]

#row 3, columns 2 through 3
theDF[3, 2:3]

#row 3 and 5, column 2
#since only one column was selected, it was returned as a vector.
#hence the column names will not be printed
theDF[c(3,5), 2]

#rows 3 and 5, columns 2 through 3
theDF[c(3,5),2:3]

#all of column 3
#since it is only one column a vector is returned
theDF[, 3]

#all of columns 2 through 3
theDF[, 2:3]

#all of row 2
theDF[2, ]

#all of rows 2 through 4
theDF[2:4, ]


#To access multiple columns by name, make a column argument a character vector of the names
theDF[, c("First", "Sport")]

#just the "Sport" column
#Since it is one column it returns as a (factor) vector
theDF[, "Sport"]

class(theDF[, "Sport"])

theDF["Sport"]

class(theDF["Sport"])

#just the "Sport" column
#this also returns a (factor) vector

theDF[["Sport"]]