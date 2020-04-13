######################################
# R is an interpreted, command-based
# language. 
######################################

# This is a comment

##########################################
## Basics, variables, and vectors
##########################################

# R can be used like a calculator
7+10
7*9
sqrt(64)

# Variables are NOT declared. Types will be determined automatically
# Use either '<-' or '=' for assignment
x <- 14  # x = 14 will do the same thing
y <- 21
name <- "Bob" # you can also use single quotes, but double quotes are preferred

# A fundamental type of variable in R is a vector (like a 1D array)
ages <- c(19,20,24, 22, 18)

# how many ages do we have?
length(ages)

# what is the age of the 2nd individual? Note that unlike C++/Java, indexing begins at 1
ages[2]

# What are the ages of individuals 2-4?
ages[2:4]

# What are the ages of the 1st and 3rd individual?
index <- c(1,3)
ages[index]

# What are the ages of the 1st and 3rd individual (alternative approach)? 
ages[c(1,3)]

# a logical vector contains TRUE/FALSE values
ages > 20

# what are the ages greater than 20?
index <- ages > 20
ages[index]    # or alternatively, use ages[ages > 20]

# how many ages are > 20? 
# the 'sum' function sums over all elements in a vector; for a boolean vector, 
# TRUE = 1 and FALSE = 0, so 'sum' will count the number of TRUE values
sum(index) 

# To get help on a command, use the question mark (?) or
# the help.search command, e.g.,
# ?c        ?ls       help.search("plot")

# remove an object (variable or function) from the environment
rm(x)

# remove all objects
rm(list = ls())


##############################################
# matrices - all elements must be same type
##############################################
m <- matrix(1:30,ncol=5,byrow = TRUE)
colnames(m) <- paste("x",1:5, sep = "")
rownames(m) <- paste("p", 1:6, sep = "")

# what are the dimensions of the matrix?
dim(m)   # number of rows, number of columns
nrow(m)  # number of rows
ncol(m)  # number of columns
length(m) # number of observations

## get the observation in the 1st row and 3rd column
m[1,3]

## get the first row
m[1,]

# get the first 2 rows
m[1:2,]

# get the first column
m[,1]

########################################################
# lists - a collection of objects that can be accessed
#    by index or by name. 
########################################################

person <- list(name = "Bob", age = 23, sex = "M")

# how many objects are in the list, and what are their names?
length(person)
names(person)

# access the first object:
person[[1]]

# access the 2nd object:
person[[2]]

# access objects by name:
person$name
person$age

# another way to access objects by name:
person[['name']]
person[['age']]

# add a new object
person$major <- "cs"

## note that each object need not be of length 1
person$sibling.ages <- c(3,6)

##############################################################################
# The working directory is the default directory where files will be saved
# and read from, if no other directory is specified. You can see the current
# working directory by using the 'getwd' function, as shown below; to set
# your working directory, use the 'setwd' function or click on 
# Session --> Set Working Directory. My recommendation is to always use 
# the complete file path when saving and reading files.
##############################################################################

# display your current working directory 
getwd()

##############################################################################
# Exiting R:
# save.image(file = "intro.RData")     # saves all objects in workspace
# save(m, person, file = "intro.RData")  # saves selected objects
# q()  ## you will be prompted to save image in default location
################################################################################

###############################################################################
# Select Tools --> Global Options... to set whether you want to
# automatically save your workspace to .RData on exit, and to
# automatically load the .RData workspace on startup
##############################################################################

###############################################################################
# For additional practice, I recommend completing the tutorials
# below following the instructions on http://swirlstats.com:
#
# 1: Basic Building Blocks
# 2: Workspace and Files
# 3: Sequences of Numbers
# 4: Vectors
# 5: Missing Values
# 6: Subsetting Vectors
# 7: Matrices and Data Frames
# 8: Logic
# 9: Functions
# 10: lapply and sapply
# 11: vapply and tapply
# 12: Looking at Data
###############################################################################