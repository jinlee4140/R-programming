#A data frame has the variables of a data set as columns and the observations as rows.
#When you work with large data sets and data frames, your first task as a data analyst is to develop a clear understanding of its structure and main elements. 
#head() enables you to show the first observations of a data frame. tail() prints out the last observations in your data set. 

#str() shows you the structure of your data set. For a data frame it tells you:

#1. The total number of observations (e.g. 32 car types)
#2. The total number of variables (e.g. 11 car features)
#3. The full list of the variables names (e.g. mpg, cyl ...)
#4. The data type of each variable (e.g. num for car features)
#5. The first observations.

#It is a great way to get more insight in your data set before diving into the real analysis


#Create a data frame
#First goal: construct a data frame that describes the main characteristics of eight planets in our solar system. According to your good friend Buzz, the main features of a planet are:
#- type of planet
#- planet's diameter relative to the diameter of the Earth
#- The planet's rotation across the sun relative to that of the Earth
#- if the planet has rings or not (TRUE or FALSE)


planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883);
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67);
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE);

#create a data frame
planet_df <- data.frame(planets,type,diameter,rotation,rings)
planet_df

str(planet_df)

#my_data_frame[1,2] selects from the first row in my_data_frame the second element
#my_data_frame[1:3,2:4] selects rows 1,2,3 and columns 2,3,4 in my_data_frame

planet_df[1:3,]
planet_df[6:8,]

#Instead of using numeric to select elements of a data frame, you can also use the variable names to select columns of a data frame.
planet_df[3:8,"diameter"]

#only planet with rings
planet_df[, "rings"]
planet_df$rings
planet_df[, 5]
#planets_df[,5] = planets_df[,"rings"] = planets_df$rings


#subset() specifies the data set for which you want a subset. By adding the second argument, you give R the necessary information and conditions to select the correct subset.

small_planet_df <- subset(planet_df, subset = planet_df$diameter < 1)
small_planet_df

small_planet_df2 <- subset(planet_df, subset = planet_df$rings == TRUE)
small_planet_df2

#order() is a function that gives you the ranked position of each element when it is applied on a variable, such as a vector for example.
a <- c(100, 9, 101)
order(a)
#returns the vector {2,1,3} since 100 is the second largest element of the vector, 9 is the smallest element and 101 is the largest element.
a[order(a)]
order(1:10)
order(2:20)
order(c(5,4,6,7))

positions <- order(planet_df$diameter, decreasing = TRUE)
positions
#creating new 'ordered' data frame
largest_first_df <- planet_df[positions, ]
largest_first_df

#****need to work on this*****

