# Author: Jamison Ward
# Created: Sat, Oct 04 2025, 15:07:43

library(readr)

# The code below adds two numbers
2 + 2  # The code below adds two numbers

2 + 2  # I prefer to annotate my code this way

# Section 1 ----

# This code is in section 1

# R as a calculator ----
2 + 3
2 - 3
2 * 3
2/3
2^3

2 + 3 * 4

sqrt(100)

# R will evaluate multiplication before addition
# 2 + 2 * 2 will produce 6 as an output


# Formatting code ----

# Use whitespace effectively to enhance code readability

sqrt(64)  # Produces the same output as

sqrt ( 64 )  # But the whitespace here is unnecessary

# To reformat code for readability, go to Code -> Reformat Selection
# OR, use the hotkey 'Ctrl+Shift+A'

2 + 2  # Has been reformatted from '2+2'

# sqrt(100  # This line needs a closing parenthesis

# Creating Objects in R ----

my_obj <- 2 + 2  # Use the hotkey 'Alt+-' to insert the assignment operator
                 # The code is evaluated before it is assigned to the object

my_obj2 <- "Don't use the '=' sign for object assignment"

my_obj3 <- 2 + 2 + 2  # This code will evaluate to the value '6'

# Data sets are objects, too! ----

# ebola_sierra_leone_data <- read.csv("https://tinyurl.com/ebola-data-sample")

# In RStudio, we can work on multiple data sets simultaneously

# diabetes_china <- read.csv("https://tinyurl.com/diabetes-china")

# Rename an object ----

ebola_sierra_leone_data <- "some data"
ebola_data <- ebola_sierra_leone_data  # Rename the object
rm(ebola_sierra_leone_data)

# Overwrite an object ----

first_name <- "Joanna"
first_name <- "Luigi"

# Working with objects ----

my_num <- 100
sqrt(my_num)

my_sum <- my_num * 3

print(my_sum)

cat(my_num)

ebola_data_1 <- read.csv("ebola_dat_raw-424c2e1f-88b5-4148-a370-b8ca5fad7088.csv")
ebola_data_2 <- read_csv("ebola_dat_raw-424c2e1f-88b5-4148-a370-b8ca5fad7088.csv")
diabetes_data <- read_csv("diab_china_dat.csv")

table(ebola_data_1$sex)

# answer <- eight - 8  # Running this code will produce an error

table(ebola_data_1$district)

# Errors with objects ----

first_name <- "Luigi"
last_name <- "Fenway"

# first_name + last_name  # Running this code will produce an error

paste(first_name, last_name)  # This is the correct way to concatenate strings

my_num <- 48  # Assign a numeric value to a variable

# My_num + 2  # "My_num" has not been previously created b/c R is case sensitive

my_1st_name <- "Bob"  # It's possible to include numbers in a string

paste(my_1st_name)  # Strings must be printed using a function such as "paste"

# Naming Objects ----

# Names should be short but informative so they are easy to type yet useful
# to other users

# snake_case is a naming convention where names are all lower case and separates
# words with underscores

# period.case is the same as snake case but uses periods as delimiters instead

# camelCase capitalizes new words

# no object names can begin with a number

# 2014_data <- "some data"  # Cannot begin variable name with a number
# data-2014 <- "some data"  # Cannot use hyphens as delimiters
data_2014 <- "some data"  # This is a valid object name
`2014_data` <- "some data"  # Using backticks ('`') is a way to start a variable name with a number

# Functions in R ----

# A function in R will perform an operation on an input to produce an output

# R has several built-in functions, for example...

paste("I am number", 2 + 2)

# Basic function syntax

# function_name(argument1 = value1, argument2 = value2)

head(x = ebola_data_1, n = 5)  # The head function will output a user-specified number of rows in the data set
head(ebola_data_1, 5)  # This function call will produce the same output as the one in the previous line

# To learn more about the "head" function, run "?head" in the R console

head(ebola_data_2)  # The default value of the function's "n" parameter is 6

# Function Nesting ----

tolower("LUIGI")

paste("My name is", tolower("LUIGI"))

my_lowercase_name <- tolower("LUIGI")

paste("My name is", my_lowercase_name)

# sqrt(tolower("LUIGI"))  # This line produces an error because the sqrt() argument is non-numeric

# Packages ----

# install.packages("tableone")  # Use function "install.packages()" to install packages
library(tableone)  # Use the "library()" function to load a package

CreateTableOne(data = ebola_data_1)

# Full Signifiers ----

tableone::CreateTableOne(data = ebola_data_1)  # A way to use a package function without first loading with the library() function
# The above code applies the 'CreateTableOne' function from the {tableone} package on the the 'ebola_data_1' object

# Pacman ----

pacman::p_load(outbreaks)  # Check to see if 'outbreaks'
pacman::p_load(dplyr)
pacman::p_load(ggplot2)

# To install the "pacman" package on a computer if not already installed, run the code line...
if(!require(pacman)) install.packages("pacman")

# Then, can load another package by calling "p_load" from the "pacman" package
pacman::p_load(ggplot2)

paste("Goodluck", "Jonathan", sep = "-")
