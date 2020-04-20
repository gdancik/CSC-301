##########################################################################################
# Web Scraping using rvest (for harvesting web data)
# (Modified from: https://blog.rstudio.com/2014/11/24/rvest-easy-web-scraping-with-r/)
##########################################################################################

library(rvest) # for web scraping

# set the use-agent
httr::set_config( httr::user_agent("R/test scraper") )

# make a get request and return the page
imdb <- read_html("https://www.imdb.com/title/tt1727824/")


# To get the title of the page:

# first get the title element (stored as an html_node)
title_node <- html_node(imdb, "title")

# then extract the text of the element
title_text <- html_text(title_node)
title_text

# if we just want the title (we don't need the element itself),
# then we can use piping
title_text <- imdb %>% html_node("title") %>%
                       html_text()
title_text

#################################################################
# use html_node to get the first element by name or CSS selector
# use html_nodes to get a list of all elements
#################################################################

# get the rating (we can use CSS selector notation)
ratingDiv <- imdb %>% html_node("div.imdbRating")

# if you want to view all html of an element, convert it to a 
# character
as.character(ratingDiv)

# if you need the tag name
html_name(ratingDiv)

# get the first span tag in the ratingDiv (which has the rating)
rating <- ratingDiv %>% html_node("span") %>% html_text()
rating


# use html_node to get the first div (stored as an xml_node)
ratingDiv %>% html_node("div")

# use html_nodes to get all divs (stored as an xml_nodeset)
ratingDiv %>% html_nodes("div")

# get all attributes
html_attrs(ratingDiv)

# get specific attribute
html_attr(ratingDiv, "class")

# to get elements by an attribute you can do the following 
imdb %>% html_node('span[itemprop]')

# so to get the rating, we just need to do the following 
imdb %>% html_node('span[itemprop=ratingValue]') %>%
         html_text()

