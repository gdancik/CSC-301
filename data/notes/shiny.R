# Shiny is an R package for developing interactive web pages
# https://shiny.rstudio.com/

# See examples in the shiny gallery: https://shiny.rstudio.com/gallery/

# Real world examples:
#   - https://www.letsrun.com/shoes
#   - http://freerangestats.info/blog/2018/05/13/nz-govt-shinyapps

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

# use the HTML function to specify a string that contains HTML tags
HTML("<p>This paragraph contains a <span style='color:blue'>blue word</span></p>")

# create an h1 header
h1("This is a header")

# create a dropdown
selectInput("inputID", label = "Select a Number:", choices = 1:3)


# add side-by-side columns using bootstrap
fluidRow(
    column(width = 6, p("column 1A")), 
    column(width = 6, p("column 2A"))
)
  