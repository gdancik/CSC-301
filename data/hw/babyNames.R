########################################################################
# Working with the babyNames dataset -- see below for assignment
########################################################################

# read in baby names data - from the Social Security Administration
# (https://www.ssa.gov/oact/babynames/limits.html),
# this contains the frequency of baby names from 1880 - 2017
babyNames <- read.csv("http://gdancik.github.io/CSC-360/data/hw/babyNames.csv",
                      header = TRUE, sep = ",")

# search for a name
name = "Josephine"

# create data frame with results for desired name
df <- babyNames[babyNames$name == name,]

# generate a bar graph of frequency of that name over time
main <- paste("Frequency of", name, "baby names over time")
barplot(df$count, names.arg = df$year, col = "lightblue", 
        xlab = "year", ylab = "Frequency", 
        main = main)

# which year was that name the most popular?
w <- which.max(df$count)
df$year[w]

# what was the frequency in the most popular year?
m <- max(df$count)
m

######################################################################
# Assignment: Create a Shiny app that loads this data and
#  (1) allows the user to select a name from a drop-down 
#      list and displays a barchart showing the frequency
#      of that name over time
#  (2) displays when that name was most popular, in the following 
#      format: "The most popular year for Garrett was 2000, when
#      "5840 babies were named Garrett"
#  (3) allows a user to select a year between 1880 and 2017,
#      using a slider (https://shiny.rstudio.com/articles/sliders.html)
#      and displays the most common name for males and females

# Comment #1: The drop down choices should be set on the server side, 
#           using updateSelectInput (https://shiny.rstudio.com/reference/shiny/0.14/updateSelectInput.html)
#           You can use the unique function to get the unique set of names
#         #2: Text can be displayed in a shiny app using verbatimTextOutput and renderText
#            (https://shiny.rstudio.com/gallery/date-and-date-range.html)
####################################################################################
