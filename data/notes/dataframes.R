#################################################################
# A data frame (data.frame) is a table (like a matrix) but 
# columns can be different types. Elements, rows, and columns 
# can be accessed using matrix notation, e.g., df[1,] or df[,3:4]. 
# A data.frame is also a list, where df[[i]] is the ith column,
# and columns can also be accessed by name, e.g., df$age
#################################################################

# Look at the built-in data set 'Titanic', which
# summarizes the fate of its passengers; first convert to data frame 
titanic_df <- as.data.frame(Titanic)

# view the 'head' of the data set (first 6 rows)
head(titanic_df)

# view using a spreadsheet-like viewer
View(titanic_df)

# get number of rows
nrow(titanic_df)

# get number of columns
ncol(titanic)

# look at first 3 rows
titanic_df[1:3,]

# look at age of first 5 individuals
titanic_df$Age[1:5]

###########################################################
# The dplyr package is useful for manipulating data frames
###########################################################

# Load the dplyr package 
library(dplyr)

# get data for the children only, using the dplyr 'filter' function
children <- filter(titanic_df, Age == "Child")
nrow(children)

##################################################################
# The pipe ('%>%') operator is used to pass an object to
# a function as its first parameter, so that
# x %>% f(y, ...) becomes f(x, y, ...)
# Note: the pipe operator comes from the 'magrittr' package, 
# which is loaded with 'dplyr'
##################################################################

# same as filter(titanic_df, Age = "Child")
children <- titanic_df %>% filter(Age == "Child")
nrow(children)

#######################################################################
# 'summarize' summarizes the data based on the specified function
#    (the summary will apply to each group if groups exist --
#     see next example)
#######################################################################

# How many passengers were there? 
titanic_df %>% summarize(n = sum(Freq))

#######################################################################
# 'group_by' splits the data into groups for future analysis
# Note: summarize() after group_by removes the last grouping
#######################################################################

# How many children and adults are there?
titanic_df %>% group_by(Age) %>% 
  summarize(n = sum(Freq))

# How many children and adults survived
titanic_df %>% group_by(Age, Survived) %>% 
  summarize(n = sum(Freq))

# add column showing proportion
titanic_df %>% group_by(Age, Survived) %>% 
  summarize(n = sum(Freq)) %>% 
  mutate(freq = n / sum(n))
