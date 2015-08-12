matrix(1:9, byrow=TRUE, nrow=3)
matrix(1:9, byrow=FALSE, nrow=3)

# Box office Star Wars: In Millions!
# The first element: US, Second element: Non-US 

new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

starwars_vector <- c(new_hope, empire_strikes, return_jedi)
starwars_vector
# Add your code below to Construct matrix

starwars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)
starwars_matrix

# Add your code here such that rows and columns of star_wars_matrix have a name!
colnames(star_wars_matrix) <- c("US", "non-US")
rownames(star_wars_matrix) <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

