"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""

import random
import string

def BatchStringGenerator():
    a = int(input('Enter minimum string length: '))
    b = int(input('Enter maximum string length: '))
    n = int(input('How many random strings to generate? '))
    r=[]
    
    for i in range(n):
        length=random.randint(a, b)
        result_str = ''.join(random.choices(string.ascii_lowercase + string.digits, k=length))
        r.append(result_str)
    print (r)

BatchStringGenerator()
