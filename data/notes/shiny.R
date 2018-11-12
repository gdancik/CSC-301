# Shiny is an R package for developing interactive web pages
# https://shiny.rstudio.com/

# To create a web application using shiny, we will create a UI
# (user interface) and server. 

# In this script we demonstrate some basic shiny functions
# Note that all shiny functions are wrappers for HTML,CSS, or
# Javascript

library(shiny)

# create a paragraph
p("This is a pargraph")

# add a style
p("This is a blue paragraph", style = "color: blue")

# add an id; note the order of the attributes does not matter
p(id = "intro", "This is a blue paragraph", style = "color: blue")

# this does not work for specifying inner HTML
p("This paragraph contains a <span style='color:blue'>blue word</span>")


# but this does
HTML("<p>This paragraph contains a <span style='color:blue'>blue word</span></p>")

# create a header
h1("This is a header")

# create a dropdown
selectInput("inputID", label = "Select a Number:", choices = 1:10)


# add side-by-side columns using bootstrap
fluidRow(
    column(width = 6, p("column 1A")), 
    column(width = 6, p("column 2A"))
)
  

# Let's look at an example:
# https://shiny.rstudio.com/gallery/telephones-by-region.html


