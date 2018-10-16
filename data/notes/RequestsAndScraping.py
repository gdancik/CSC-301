#!/usr/bin/env python3
# -*- coding: utf-8 -*-

################################################################
# Web page requests can be made with the requests package
################################################################

import requests
from bs4 import BeautifulSoup
import time

# use requests.get to submit a 'get' request
page = requests.get("http://www.easternct.edu/computerscience/faculty/")

# check for valid status (https://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html)
page.status_code

if page.status_code != requests.codes.ok :
    print("Request was not successful, status code:", page.status_code)
    print("Hit enter to continue...")
    input()
    exit()
    

# look at page content (as a string)
page.content


# let's wait 1 second before making the next request
time.sleep(1)

# it is good practice to identify yourself
# change the user-agent as appropriate
headers = {"User-Agent": "Webscraping class example"}

# use requests.get to submit a 'get' request, and specify header
page = requests.get("http://www.easternct.edu/computerscience/faculty/", 
                    headers=headers)

if page.status_code != requests.codes.ok :
    print("Request was not successful, status code:", page.status_code)
    exit()
    
# Parse page using BeautifulSoup
soup = BeautifulSoup(page.content, 'html.parser')

# prettify converts the content into a nicely formatted string
print(soup.prettify())


# we will extract all e-mail addresses, which are in link (a) elements
# of the form <a href = "mailto:dancikg@easternct.edu">Dr. Dancik</a>

# this function returns True if x contains "mailto"
def mailto(x) :
    if x == None :
        return False
    if "mailto" in x :
        return True
    return False

# print out all e-mail addresses and links (not necessarily the names)
emails = soup.find_all("a", href = mailto)
for e in emails :
    name = e.string
    address = e['href'].replace("mailto:", "")
    print(name, ": ", address, sep = "")



