"""
Unit testing is an important framework for testing
classes and functions. When a script is modified,
unit tests can easily be run again to make sure
that the script still works correctly.

To set up unit tests in python, 
1) define a class that inherits from unittest.TestCase
2) write functions to perform the tests (names must
   begin with "test")
3) Use assertEqual (or other asserts) to perform the test

More details: https://docs.python.org/3.4/library/unittest.html
"""

import unittest

def add(x,y) :
    return x + y

def subtract(x,y) :
    return x + y

# define a class that inherits from unittest.TestCase
class TestCalculator(unittest.TestCase):

    # test method names must start with "test"
    def test_add(self) :
        answer = add(3,4)
        self.assertEqual(answer, 7)
        
    def test_subtract(self) :
        answer = subtract(3,4)
        self.assertEqual(answer, -1)    
        

# create a suite (collection of tests)    
suite = unittest.TestLoader().loadTestsFromTestCase(TestCalculator)

# run the tests
unittest.TextTestRunner(verbosity=2).run(suite)
    