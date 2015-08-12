#Factor
#Why do we use factor?
#The term factor refers to a statistical data type used to store categorical variables.
#The difference between a categorical variable and a continuous variable is that a categorical variable can belong to a limited number of categories.
#Continuous variable, on the other hand, can correspond to an infinite number of values.

#Example of categorical variable -> Gender. A human individual can either be Male or Female.

gender_vector <- c("Male", "Female", "Male", "Female", "Female")
gender_vector

factor_gender_vector <- factor(gender_vector)
factor_gender_vector

#Two types of categorical variable : nominal categorical variable and ordinal categorical variable.
#Nominal variable = categorical variable without an implied order. This means that it is impossible to say that 'one is worth more than the other'

#Good example is an animal vector with categories elephant, lion, donkey, horse.
#Here it is impossible to say that one stands above or below the other.

#Ordinal variable = categorical variable that has a natural ordering.
#Temperature vector with categories "low", "medium", and "high".
#Medium stands above Low, and High stands above Medium.

animal_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
temperature_vector <- c("low", "medium", "high")

factor_animal_vector <- factor(animal_vector)
factor_animal_vector

factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("low", "medium", "high"))
factor_temperature_vector