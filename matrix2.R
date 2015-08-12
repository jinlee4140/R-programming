matrix(1:9, byrow = TRUE, nrow = 3)
matrix(1:9, byrow= FALSE, nrow = 3)

# Box office Star Wars: In Millions!
# The first element: US, Second element: Non-US 
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.990)
return_jedi <- c(309.306, 165.8)

#testing how the vector looks like
vector <- c(new_hope, empire_strikes, return_jedi)
vector

#Add your code below to Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), byrow = TRUE, nrow = 3)
star_wars_matrix

colnames(star_wars_matrix) <- c("US", "non-US")
rownames(star_wars_matrix) <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

star_wars_matrix




box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
rowname <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
colname <- c("US", "non-US")
star_wars_matrix2 <- matrix(box_office_all, byrow = TRUE, nrow = 3, dimnames = list(rowname, colname))
star_wars_matrix2

worldwide_vector <- rowSums(star_wars_matrix2)
worldwide_vector

all_wars_matrix <- cbind(star_wars_matrix2, worldwide_vector)


#Lets create a Star Wars matrix for Star Wars 1, 2, and 3 and combine that matrix
#With the other matrix using rbind method





#Similar to vectors, you can use the square brackets [ ] to select one of multiple
#elements from a matrix. Whereas vectors have one dimension, matrices have two dimensions.

#matrix[1,2] Selects first row the second element
#matrix[1:3,2:4] Selects row 1,2,3 and columns 2, 3, 4
#matrix[,1] Selects all elements of the first row and first column
#matrix[1,] Selects the first row and all of the columns

