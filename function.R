#FUNCTIONS
#Create a list: list()
#Display a variable: print()

#BLACK BOX PRINCIPLE : input -> processing -> output
#c(1,5,6,7) -> sd() -> 2,629956
#standard deviation
sd(c(1,5,6,7))

values <- c(1,5,6,7)
sd(values)

my_sd <- sd(values)
my_sd

help(sd)
?sd

#sd(x, na.r,) Argument names: x, na.ram    na.rm = FALSE    sd(values) works?
#R assigns values to x.  na.rm:logical. Should missing values be removed?
values <- c(1,5,6, NA)
sd(values)
#These following two things are equivalent.
sd(values, TRUE)


sd(x = values, na.rm = TRUE)

#If you put sd(), you'll get """Error in is.data.frame(x) : argument "x" is missing, with no default"""
args(sd)
#1) Functions work like a black box. 2) Argument maching: by position or by name. 3) Function arguments can have defaults.

help(sample)
#sample takes a sample of the specified size from the elements of x using either with or without replacement
#sample(x, size, replace = FALSE, prob = NULL)
#sample.int(n, size = n, replace = FALSE, prob = NULL)
?sample
args(sample)
#args function will show you a sample in the interpreter

?mean
help(mean)

args(mean)

#The mean function computes the arithmetic mean.
#The most general method takes multiple arguments: x and ... .
#The x argument should be a vector containing numeric, logical, or time-related information.

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate average number of views
#Mean can be calculated in two ways.
avg_li <- mean(x = linkedin)
avg_li2 <- mean(linkedin)
avg_fb <- mean(facebook)

# Inspect avg_li and avg_fb
avg_li
avg_li2
avg_fb

# Calculate the mean of linkedin minus facebook
mean(linkedin - facebook)

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate the mean of the sum
avg_sum <- mean(linkedin + facebook)

# Calculate the trimmed mean of the sum
avg_sum_trimmed <- mean(linkedin + facebook, trim = 0.2)

#NOT EXACTLY UNDERSTANDING WHAT TRIM DOES *****************
# Inspect both new variables
avg_sum
avg_sum_trimmed


# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Basic average of linkedin
mean(linkedin)

# Advanced average of facebook
mean(facebook, na.rm = TRUE)
mean(abs(linkedin - facebook), na.rm = TRUE)

args(abs)
help(abs)
#abs(x) computes the absolute value of x, sqrt(x) computes the principal square root of x
#mean(x, trim = 0, na.rm = FALSE, ...)
#x is required; if you do not specify it, R will throw an error. trim and na.rm are optional arguments: they have a default value which is used if the arguments are not explicitly specified.
#read.table() <--------------- what is this?

#WRITING FUNCTIONS
#When write your own? 1) Solve a particular, well-defined problem. 2) Black box principle. 3) If it works, inner workings less important.
#The triple() function    in -> triple() -> out

triple <- function(x) {
  3 * x
}
triple(6)

#return()
triple <- function(x) {
  y <- 3 * x
  return(y)
}

triple(6)
#math_magic()

#4 and 2 -> math_magic() -> (4 * 2) + (4 / 2) = 10
math_magic <- function(a,b = 1) {
  a*b + a/b
}

math_magic(4,2)
math_magic(4)
#b = 1 is a default incase b is left blank.
math_magic(4,0)
#???????????????????? Why is this infinite when it is UNDEFINED?


pow_two <- function(x) {
  x^2
}
pow_two(2)

sum_abs <- function(a,b) {
  abs(a) + abs(b)
}

sum_abs(-2,3)

#There are situations in which your function does not require an input. To define a function that takes no arguments, you can just use the typical function recipe. Let's say you want to write a function that gives us the random outcome of throwing a fair dice:
throw_dice <- function() {
  number <- sample(1:6, size = 1)
  number
}
#call the function
throw_dice()

x <- str(list(1,2,3))
x

hello <- function() {
  print("Hi there!")
  TRUE
}

hello()

my_filter <- function(x) {
  if(x > 0) {
    return(x)
  } else {
    return(NULL)
  }
}

my_filter(1)
my_filter(0)
my_filter(5)
my_filter(-5) 


pow_two <- function(x, print_info = TRUE) {
  y <- x^2
  if(print_info) {
    print(paste(x, "to the power of two equals", y))
  }
}
pow_two(2)
pow_two(4)




linkedin <- c(16,9,13,5,2,17,14)
facebook <- c(17,7,5,16,8,13,14)

interpret <- function(views) {
  if(views > 15) {
    print("You're popular!")
    return(views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Call the interpret function twice
interpret(linkedin[1])
interpret(facebook[2])