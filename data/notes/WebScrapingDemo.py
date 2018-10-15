#!/usr/bin/env python3
# -*- coding: utf-8 -*-

################################################################
# Web scraping with Beautiful Soup (Note: we will use Beautiful
# Soup 4, or bs4). You may need to install this on your own
# computer. More information and some examples can be found 
# here: https://beautiful-soup-4.readthedocs.io/en/latest/#
################################################################

from bs4 import BeautifulSoup

# read the web page (stored in a local file)
fileName = '/Users/dancikg/easternct/COURSES/CSC360/Lectures/10-WebScraping/schedule.html'
page = open(fileName)

content = page.read() # reads the entire file into a single string

# parse the web page using Beatiful Soup, which creates a 
# BeautifulSoup object
soup = BeautifulSoup(content, 'html.parser')

# prettify converts the content into a nicely formatted string
print(soup.prettify())

################################################################
# the web page is stored in a tree, which can be navigated and
# searched.  Elements of this tree consist of strings or 
# bs4 objects
################################################################

################################################################
# specificying the tag name will get the first tag of that type
################################################################

# get the heading of the page
soup.head

# get the title of the page
soup.title

# get the first table on the page
soup.table

# bs4 / HTML elements have attributes (stored as dictionaries)

# get all attributes of the first div
soup.div.attrs

# get the 'class' of the first div
soup.div['class']

# use .name to get the name of each tag
soup.div.name

################################################################
# elements have children and parents
# use .contents to get a list of direct children
# use .children to get an iterator of the direct children
# use .descendents to get an iterator of all children
################################################################

# children of soup include only the html tag (and several strings)
print("soup.children: ")
for el in soup.children:
    print(type(el), el.name)
    
print()

#descendants include all tags
print("soup.descendents: ")
for el in soup.descendants:
    if el.name != None :
        print(el.name)



################################################################
# getting the 'innerText' of an element
# use .string to get the text (only available if element has 
#           no children)
# use .strings to get a generator (iterator) for element and
#            children's strings
# use .stripped_strings to remove whitespace
################################################################

soup.title
soup.title.string

# Python strip removes leading and trailing whitespace
soup.title.string.strip() 

# print text of each element in first row (tr)
for s in soup.tr.strings :
    print(s)


# print text of each element in first row (tr), with whitespace stripped    
for s in soup.tr.stripped_strings :
    print(s)
    

################################################################
# searching the webpage, by tag name, class, etc (see examples)
# use find to get the first occurence 
# use find_all to get all occurences
################################################################

#finds the first tr element
soup.find("tr")

#finds all tr elements
tr = soup.find_all("tr")
print("Number of table rows:", len(tr))
for row in tr :
    print(row.prettify())

# finds elements by id using named arguments
# (works for several attributes including id and href)    
soup.find_all(id = 'officeHours')

# for some attributes, you can specify a dictionary
# with the attribute and value

# finds all elements with class = 'additional'
soup.find_all(True, {"class": "additional"})

# finds all div elements with class = 'additional'
soup.find_all("div", {"class": "additional"})


################################################################
# Exercise: find and print out my office hours
################################################################


################################################################
# Exercise: find and print out the courses I teach
################################################################

################################################################
# Exercise: Download the CS faculty page, located at
#       http://www.easternct.edu/computerscience/faculty/
# Then use BeautifulSoup to extract the names of each faculty 
# that has a blue background. Note: your program can output
# 'Adjunct Faculty'
################################################################

