#A list in R is similar to your to-do list at work or school: the different items on that list most likely differ in length, characteristic, type of activity that has to do be done.
#A list in R allows you to gather a variety of objects under one name (name of the list) in an ordered way. These objects can be matrices, vectors, data frames, even other lists, etc. It is not even required that these objects are related to each other. 
my_vector <- 1:10
my_vector

my_matrix <- matrix(1:9, ncol = 3)
my_matrix

# List
my_list <- list(my_vector, my_matrix)
my_list

#If you want to name your lits after you've created them, you can use the names() function as you did with vectors.
#my_list <- list(your_comp1, your_comp2 ...)
#names(my_list) <- c("name1", "name2" ...)
names(my_list) <- c("vector", "matrix")
my_list


actors <- c("Jack Nicholson", "Shelley Duvall", "Danny Lloya", "Scatman Crother", "Barry Nelson")
actors

scores <- c(4.5, 4.0, 5.0)
sources <-c("IMDb1", "IMDb2", "IMDb3")
comments <- c("Best horror film I have ever seen", "A truly brilliant and scary film from Stanley Kubrick", "A masterpiece of psychological horror")

reviews <- cbind(scores, sources, comments)
reviews

shining_list <- list(moviename = "The Shining", actors = actors, reviews = reviews)
shining_list

last_actor <- shining_list$actors[5]
last_actor
last_actor2 <- shining_list$actors[length(shining_list$actors)]
last_actor2

second_review <- shining_list$reviews[2,]
second_review

shining_list_full <- c(shining_list, year=1980)
shining_list_full

str(shining_list_full)