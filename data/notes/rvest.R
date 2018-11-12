# Web Scraping using rvest (for harvesting web data)
# (https://blog.rstudio.com/2014/11/24/rvest-easy-web-scraping-with-r/)

library(rvest)

imdb <- read_html("https://www.imdb.com/title/tt1727824/")

# one approach for getting the title of a page:
title_node <- html_node(imdb, "title")
title_text <- html_text(title_node)
title_text

# nested approach for getting the title of a page:
title_text <- html_text(html_node(imdb, "title"))
title_text

# the pipe operator (%>%) (from magrittr package) pipes the 
# output from the previous function to the first argument of the next,
# e.g., x %>% f() is the same as f(x)
# piping approach for getting the title of a page:
title_text <- imdb %>% html_node("title") %>%
                       html_text()
title_text

# get the cast (we can specify tag/class in css format)
ratingDiv <- imdb %>% html_node("div.imdbRating")

# if you need the tag name
html_name(ratingDiv)

rating <- ratingDiv %>% html_node("span") %>% html_text()
rating

# use html_node to get first element; html_nodes to get all

# get the first div (stored as an xml_node)
ratingDiv %>% html_node("div")

# get all divs (stored as an xml_nodeset)
ratingDiv %>% html_nodes("div")

# get all attributes
html_attrs(ratingDiv)

# get specific attribute
html_attr(ratingDiv, "class")




