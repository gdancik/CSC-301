#!/usr/bin/env python3
# -*- coding: utf-8 -*-

################################################################
# In Python, use json module to convert JSON objects to 
# Python dictionaries
################################################################

import requests
import json

# use requests.get to submit a 'get' request
page = requests.get("https://pokeapi.co/api/v2/pokemon/1/")


if page.status_code != requests.codes.ok :
    print("Request was not successful, status code:", page.status_code)
    print("Hit enter to continue...")
    input()
    exit()
    

# look at page content (as a string)
page.content


record = json.loads(page.content)

print()
print("Name: " + record['name'])

abilities = []
for r in record['abilities'] :
    abilities.append(r['ability']['name'])

print("Abilities:",  ", ".join(abilities))



