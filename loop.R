ctr <- 1
while(ctr <= 7) {
  print(paste("ctr is set to", ctr))
  ctr <- ctr + 1
}

#This while loop will go infinite
#ctr <- 1
#while(ctr <= 7) {
#  print(paste("ctr is set to", ctr))
#}


# Initialize the speed variable
speed <- 64

# Code the while loop
while(speed > 30) {
  print(paste("Slow down!, your speed is", speed))
  speed <- speed - 7
}
#Print out the speed variable after the while loop ends
speed

#We simulated the interaction between the driver and the driver assistant. When the speed was too high, "Slow down!" got printed to the console, resulted in the decrease of your speed by 7 units.
speed2 <- 100
while(speed2 > 30) {
  print(paste("Your speed is currently", speed2, "at a 30 mps limit zone"))
  if(speed2 > 48) {
    print("Slow down big time!")
    speed2 <- speed2 - 11
  }
  else {
    print("Slow down")
    speed2 <- speed2 - 7
  }
}


#There are some rare situation in which severe speeding is necessary: What if a hurricane is approaching and you have to get away as quickly as possible? You don't want the driver assistant sending you speed notifications. Right?
speed3 <- 88
while(speed3 > 30) {
  print(paste("Your speed is currently", speed3, "at a 30 mps limit zone"))
  #Break the while loop if the speed exceeds 80 because it could possibly be an emergency.
  if(speed3 > 80) {
    break
  }
  
  if(speed3 > 48) {
    print("Slow down big time!")
    speed3 <- speed3 - 11
  }
  else {
    print("Just slow down")
    speed3 <- speed3 - 7
  }
}

# Initialize i
i <- 1

# Code the while loop
while(i <= 10) {
  print(i*3)
  if((i*3) %% 8 == 0) {
    break
  }
  i <- i + 1
}

#if the remainder is 0, then the entire loop breaks.


#FOR LOOP
cities <- c("New York", "Paris", "London", "Tokyo", "RIo de Janeiro", "Cape Town")
cities

for(city in cities) {
  print(city) 
}

cities2 <- list("New York", "Paris", "London", "Tokyo", "RIo de Janeiro", "Cape Town")
for(city in cities2) {
  print(city)
}

#The for loop above is concise and easier to read, but it has no access to looping index.

#Whether it is a list or a vector, you can still use the while loop for both of them
#nchar = number of characters
for(city in cities2) {
  if(nchar(city) == 6) {
    next
  }
  print(city)
}

#next method skips to the next iteration. break method completely stops the loop.
#1:6 == c(1,2,3,4,5,6)

for(i in 1:length(cities2)) {
  print(cities[i])
}

for(i in 1:length(cities2)) {
  print(paste(cities[i], "is on position", i, "in the cities vector"))
}
#The loop above is harder to read and write, but it is more versatile.
#CHALLENGES
primes <- c(2, 3, 5, 7, 11, 13)
#loop version 1
for(prime in primes) {
  print(prime)
}

#loop version 2
for(i in 1:length(primes)) {
  print(primes[i])
}

linkedin <- c(16, 9, 13, 5, 2, 17, 14)
#loop version 1
for(view in linkedin) {
  print(view)
}

#loop version 2
for(i in 1:length(linkedin)) {
  print(linkedin[i])
}

#LOOP over a list
#looping over a list is just as easy and convenient as looping over a vector. If you're looping by iterating over the elements in the list, you can use the exact same syntax as for vectors. However, if you're working with a looping index that is subsequently used for subsetting the list, you have to be careful.
#You have to use single square brackets for vectors and double square brackets for lists.
primes_vec <- c(2, 3, 5, 7, 11, 13)
primes_vec[4]

primes_list <- list(2, 3, 5, 7, 11, 13)
primes_list[[4]]

nyc <- list(pop = 8405837, boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), capital = FALSE)

nyc

#loop version 1
for(info in nyc) {
  print(info)
}

#loop version 2
for(i in 1:length(nyc)) {
  print(nyc[i])
}

#LOOP over a matrix
ttt <- matrix(c("O", NA, "X", NA, "O", NA, "X", "O", "X"), nrow = 3, ncol = 3)
ttt

#To solve this tic tac toe, you'll need a for loop inside a for loop, often called a nested loop.
for(i in 1:nrow(ttt)) {
  for(j in 1:ncol(ttt)) {
    print(paste("On row", i, "and column", j, "the board contains", ttt[i,j]))
  }
}

linkedin <- c(16, 9, 13, 5, 2, 17, 14)
for(li in linkedin) {
  print(li)
  if(li > 10){
    print("You are popular")
  }
  else {
    print("Be more visible!")
  }
}


linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Adapt/extend the for loop
for(li in linkedin) {
  if(li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  
  # Add code to conditionally break iteration
  if(li > 16) {
    print("This is ridiculous, I'm outta here!")
    break
  }
  
  # Add code to conditionally skip iteration
  if(li < 5) {
    print("This is too embarrassing...")
    next
  }
  
  print(li)
}


#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# Pre-defined variables
rquote <- "R's internals are irrefutably intriguing"
chars <- strsplit(rquote, split = "")[[1]]
chars
# Your solution here
rcount <- 0
for(char in chars) {
  if(char == "u" | char == "U") {
    break
  }
  if(char == "r" | char == "R") {
    rcount <- rcount + 1
  }
}

# Print the resulting rcount variable to the console
rcount