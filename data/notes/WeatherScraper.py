#!/usr/bin/env python3
# -*- coding: utf-8 -*-

################################################################
# Web page requests can be made with the requests package
################################################################

import requests
from bs4 import BeautifulSoup
import pandas as pd

# it is good practice to identify yourself
# change the user-agent as appropriate
headers = {"user-agent": "Webscraper"}
page = requests.get("https://weather.com/weather/5day/l/USCT0260:1:US", headers = headers)

# check for valid status (https://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html)
page.status_code

if page.status_code != requests.codes.ok :
    print("Request was not successful, status code:", page.status_code)
    exit()
    
# Parse page using BeautifulSoup
soup = BeautifulSoup(page.content, 'html.parser')

# prettify converts the content into a nicely formatted string
print(soup.prettify())
print()

table = soup.find("table", {"class":"twc-table"})

trs = table.find_all("tr")
days = []
temps = []
for rows in trs[1:] :
    date = rows.find("span", {"class":"date-time"})
    temp = rows.find("td", {"class":"temp"})
    theDate = date.string
    theHighTemp = temp.span.contents[0]
    print(theDate, ": ", theHighTemp, sep = "")
    if theHighTemp.isdigit() :
        days.append(theDate)
        temps.append(int(theHighTemp))
    


# create a data frame (a table) by specifying a dictionary
# with column names as keys and corresponding column values
# as values
df= pd.DataFrame(data = {"days":days, "hi_temp":temps})
df


# generate a bar graph of high temperatures for each day
# set rot (rotate) to 0 so bar labels are horizontal
plt = df.plot.bar(x = "days", y = "hi_temp", 
            title = "Willimantic High Temps, next 5 days",
            legend = False, rot = 0)

plt.set_xlabel("Day of the Week")
plt.set_ylabel("Temperature (Degrees Fahrenheit)")


