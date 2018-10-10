#########################################################################
# A dictionary is a way to store key-value pairs, such as
# word-definition pairs, though this need not be the interpretation 
# 
# With a dictionary, it is easy to look up a 'key' and get the 'value'
#
# Rules: keys MUST be unique and immutable
# More info: http://www.tutorialspoint.com/python/python_dictionary.htm
#########################################################################

# format for setting up a dictionary:
d = {"Key1": "Value1", "Key2": "Value2"}
print("dictionary: ", d)
print("d['Key1'] = ", d['Key1'])
print()

# more practical example
email = {"Dancik": "dancikg@easternct.edu", 
	  "Tasneem": "TasneemS@easternct.edu",
	  "Rosiene": "RosieneJ@easternct.edu",
	  "Tu": "tuH@easternct.edu",
	  "Lin:": "LINJ@easternct.edu"}

print("keys = ", email.keys())
print()

# we can add a new value
email['Gao'] = "GaoK@easternct.edu" 
print ("keys = ", email.keys())
print()

print("Please e-mail Dr. Dancik at " + email["Dancik"])
print()

# Note: looking up a 'key' that does not exist will give you an error
# email['Smith']
# You may need to confirm that the key exists first
if 'Smith' in email.keys() :
    print("Smith:", email['Smith'])
else :
    print("'Smith' is not in the dictionary")
print()

###########################################################################
# Exercise: 
# 1. Create an 'element' dictionary that stores information for
#   <p id = "intro"> This is a paragraph </p>
#   for the following keys: tag, id, and text
# 2. Then output the element information in the following format:
#   tag: p
#   id: intro
#   text: This is a paragraph
##########################################################################

