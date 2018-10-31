# Selenium (https://www.seleniumhq.org/) automates browsers
# Primarily, it is for automating web applications for 
# testing purposes, but is certainly not limited to just that. 
# Boring web-based administration tasks can (and should!) be 
# automated as well.

# install selenium with python, https://selenium-python.readthedocs.io/

from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
import time

# on your own machine
driver = webdriver.Firefox()

# on school computer
#driver = webdriver.Firefox(executable_path='C:\geckodriver\geckodriver.exe')

driver.get("http://www.easternct.edu")
assert "Eastern Connecticut State University" in driver.title


# locating elements, see
# https://selenium-python.readthedocs.io/locating-elements.html

menu = driver.find_element_by_id("easternMainMenuList")
items = menu.find_elements_by_tag_name("li")
for item in items :
    print(item.text)


elem = driver.find_element_by_name("q")

elem.send_keys("How are you?")
elem.clear()

elem.send_keys("Computer Science")
time.sleep(1)
elem.send_keys(Keys.RETURN)


links = driver.find_elements_by_tag_name("a")
for l in links :
        text = l.text
        if l.text == '':
            text = "(no text)"
        print(text, "\n\t", l.get_attribute("href"), sep = "")


driver.close()

# Exercise: search for a movie on IMDB and go to page 
# for first result; can you extract the title and rating?


