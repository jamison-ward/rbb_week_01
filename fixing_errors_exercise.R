## Workshop exercise 1: Catching R errors

# NAME:Jamison Ward

# Welcome to your first group coding exercise!
# For each question below, you'll see a chunk of code containing one or more errors.
# These errors might prevent the code from running, 
# or they may cause the code to behave incorrectly.
# Your task is to identify and correct the errors in the script.
# Exercises will be graded individually, even though the work is done in groups.


# 1. PACKAGES AND FUNCTIONS -----------------------------------------------
# Each block of code below contains an error related to package loading and calling
# Identify and correct these errors.

# The code below tries to load the 'tidyverse' package 
# using the p_load function from the 'pacman' package
# Incorrect code:
# pacman:p_load(tidyverse)

# Identify the error:
# Add a second ':' after 'pacman'

# Corrected code:
pacman::p_load(tidyverse)


# 2. STRING MANIPULATION --------------------------------------------------
# Each block of code in this section attempts to perform a string manipulation, 
# but contains an error. Identify and correct these errors.

# A.
# The code below tries to concatenate (join) two strings.
# Incorrect code:
# first_name <- Ash
# last_name <- Ketchum
# paste(first_name, last_name)

# Identify the error:
# Need to add quotes around "Ash" and "Ketchum"

# Corrected code:
first_name <- "Ash"
last_name <- "Ketchum"
paste(first_name, last_name)

# B.
# The code below tries to combine (join) two strings into one
# Incorrect code:
# first_name <- "John" 
# last_name <- "Doe"
# full_name <- first_name + last_name
# full_name

# Identify the error:
# Need to use the paste() function to concatenate two strings

# Corrected code:
first_name <- "John" 
last_name <- "Doe"
full_name <- paste(first_name, last_name)
full_name


# 3. ARITHMETIC -----------------------------------------------------------
# Each block of code attempts to solve a particular arithmetic problem, 
# but contains an error. Identify and correct these errors.

# A.
# A patient took 12000 steps on Monday and 15000 steps on Tuesday. 
# The code below tries to calculate the average number of steps taken by a patient.
# Incorrect code:
# steps_monday <- 12000
# steps_tuesday <- 15000
# average_steps <- steps_monday + steps_tuesday / 2
# average_steps

# Identify the error:
# Need to add parentheses around "steps_monday + steps_tuesday"

# Corrected code:
steps_monday <- 12000
steps_tuesday <- 15000
average_steps <- (steps_monday + steps_tuesday) / 2
average_steps

# B.
# There are 500 smokers in a population of 20000. 
# The code below attempts to calculate the percentage of smokers in the population. 
# Incorrect code:
# total_population <- 20000
# smokers <- 500
# percentage_smokers <- (smokers ÷ total_population) * 100
# percentage_smokers

# Identify the error:
# Need to use '/' to perform the division operation

# Corrected code:
total_population <- 20000
smokers <- 500
percentage_smokers <- (smokers / total_population) * 100
percentage_smokers


# 4. NAMING R OBJECTS -----------------------------------------------------
# Each block of code in this section attempts to create an R object, but contains
# an error related to the rules for naming R objects.
# Identify and correct these errors.

# A.
# Incorrect code:
# 1st_student <- "John Doe"
# 1st_student

# Identify the error:
# Can't begin an object name with a number. Using ticks around the object name will allow this.

# Corrected code:
`1st_student` <- "John Doe"
`1st_student`

# B.
# Incorrect code:
# total population <- 10000
# total population

# Identify the error:
# Can't have a space in an object name unless using backticks. Could also use an underscore instead

# Corrected code:
total_population <- 10000
total_population


# 5. INCORRECT FUNCTION USAGE -------------------------------------------------------
# Each block of code attempts to call a function, but contains an error. 
# Identify and correct these errors.

# A.
# The code below tries to calculate the square root of a number.
# Incorrect code:
# sqrt("16")

# Identify the error:
# Need to remove the quotes around "16" to pass a number to the sqrt() function

# Corrected code:
sqrt(16)


# B.
# The code below tries to calculate the square root of a number.
# Incorrect code:
# sqrt[16]

# Identify the error:
# Need to enclose the argument of the function with parentheses

# Corrected code:
sqrt(16)


# C.
# The code below tries to get the first 5 rows of the iris dataframe
# Incorrect code:
# head(5, iris)

# Identify the error:
# The arguments are swapped in the head() function

# Corrected code:
head(iris, 5)



# 6. FUNCTION NESTING/ INTERMEDIATE OBJECTS --------------------------------------
# Each block of code contains an error involving improper function nesting
# or intermediate objects

# A.
# The code below tries to use function nesting 
# to plot the head (first 6 rows) of the 'women' dataset.
# Identify and fix the error. 
# CLUE: It involves function order.
# Incorrect code:
# head(plot(women))

# Identify the error:
# Need to nest the head() function inside of the plot() function

# Corrected code:
plot(head(women))


# B.
# The code below tries to plot the head (first 6 rows) of the 'women' dataset
# by assigning an intermediate object.
# There is a problem on the second line though. Identify and fix it.
# Incorrect code:
# head_women <- head(women)
# plot(head)

# Identify the error:
# The argument of the plot() function is not the correct variable name

# Corrected code:
head_women <- head(women)
plot(head_women)


# BONUS CHALLENGE 🌟 -----------------------------
# Write code that:
# - Creates two objects: confirmed_cases (number) and suspected_cases (number)
# - Calculates the percentage of confirmed cases out of total cases
# - Stores this in an object with a proper name
# - Creates a formatted message like: "Confirmed cases represent X% of all cases"
# - Make sure to use proper naming conventions, correct operators, and appropriate functions!

confirmed_cases <- 1000
suscpected_cases <- 50000
percent_confirmed <- confirmed_cases / (confirmed_cases + suscpected_cases) * 100
paste0("Confired cases represent ", round(percent_confirmed, 2), "% of all cases.")

# BONUS CHALLENGE 2 ----
# From the built-in iris data, compute the mean Sepal.Length (no packages).
# - To access a column, use iris$Sepal.Length
# - Use mean() to compute the average
# - Round to 2 decimals.
# - Store the number in a well-named object (e.g., mean_sepal_length).
# - Create a message like: "Mean Sepal.Length is X.YZ" and store it in sepal_msg.

head(iris)
mean_sepal_length <- round(mean(iris$Sepal.Length), 2)
sepal_msg <- paste0("Mean Sepal.Length is ", mean_sepal_length)
sepal_msg

# Example structure:
# mean_sepal_length <- mean(iris$Sepal.Length)
# mean_sepal_length <- round(mean_sepal_length, 2)
# sepal_msg <- paste("Mean Sepal.Length is", mean_sepal_length)