#Conditionals and control flow
#To be TRUE or NOT to be true; logical operator
#Relational Operators - are operators which helps us see how one R object relates to another. For example, you can check whether two things are equal. Equality == 
TRUE == TRUE 
TRUE == FALSE
"hello" == "goodbye"
3 == 2
"hello" != "goodbye"
TRUE != FALSE
3 < 5
3 > 5
"hello" > "Goodbye"   #this is true due to the alphabetical order. G comes before H
TRUE < FALSE
#TRUE coerces to 1 and FALSE coerces to 0
5 >= 3
3 >= 3

linkedin <- c(16, 9, 13, 5, 2, 17, 14)
linkedin > 10
facebook <- c(17, 7, 5, 16, 8, 13, 14)
facebook > 10

facebook <= linkedin

# Comparison of logicals
TRUE == FALSE

# Comparison of numerics
-6 * 14 != 17 - 101

# Comparison of character strings
"useR" == "user"

# Compare a logical with a numeric
TRUE == 1


# Comparison of numerics
-6 * 5 + 2 >= -10 + 1

# Comparison of character strings
"raining" <= "raining dogs"

# Comparison of logicals
TRUE > FALSE

#You want to figure out whether your marketing efforts, funny tweets and facebook posts have increased your visibility on various social media platforms.
#Each of the vector contains the number of profile views of your LinkedIn and Facebook profiles in the last seven days.

linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
days <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday")
names(linkedin) <- days
names(facebook) <- days

linkedin
facebook
# Popular days
linkedin > 15

# Quiet days
linkedin <= 5

# LinkedIn more popular than Facebook
linkedin > facebook

views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)
views

#when does views equal 13?
views == 13
#when is views less than or equal to 14?
views <= 14

#how often does facebook equal or exceed linkedin?
sum(facebook >= linkedin)
facebook >= linkedin


#Logical operators
#1.AND operator & -------- returns true if both are true

x <- 12
x > 5 & x < 15

y <- 17
y > 5 & y < 15
#2.OR operator |  ----------returns true if one of them are true
x <- 12
x > 5 | x < 15

y <- 17
y > 5 | y < 15

z <- 1
z > 10 | z > 20
#3.NOT operator ! -------- Opposite of TRUE
!TRUE
!FALSE

!(x < 5)

is.numeric("hello")
is.numeric(5)
!is.numeric(10)

last <- tail(linkedin, 1)
last

last2 <- tail(linkedin, 2)
last2

#Is the last  under 5 or above 10?
last < 5 | last > 10

#Is the last between 15 (exclusive) and 20 inclusive?
last > 15 & last <= 20

# Is last between 0 and 5 or between 10 and 15?
(last > 0 & last < 5) | (last > 10 & last < 15)

# linkedin exceeds 10 but facebook below 10
linkedin > 10 & facebook < 10

# When were one or both visited at least 12 times?
linkedin >= 12 | facebook >= 12

# When is views between 11 (exclusive) and 14 (inclusive)?
views > 11 & views <= 14

#! negates the logical value


x <- 5
y <- 7
!(!(x < 4) & !!!(y > 12))

#conditional statements
#if statement
#if(condition) { expr}

x <- -3
if(x < 0) {
  print("x is a negative number")
}

y <- 5
if(y < 0) {
  print("x is a negative number")
}

#else statement
x <- -3
if(x < 0) {
  print("x is a negative number")
} else {
  print("x is either a positive number or zero")
}


z <- 10
if(z < 0) {
  print("x is a negative number")
} else if(z == 0) {
  print("x is zero")
} else {
  print("x is a positive number")
}

