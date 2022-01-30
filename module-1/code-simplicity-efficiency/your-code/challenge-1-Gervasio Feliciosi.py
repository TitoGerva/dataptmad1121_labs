"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.
"""

name_to_number={'negative five':-5,'negative four':-4,'negative three':-3, 'negative two':-2,'negative one':-1,'zero':0,'one':1,'two':2,'three':3,'four':4,'five':5,'six':6,'seven':7,'eight':8,'nine':9,'ten':10}

def calculator():
    print('Welcome to this calculator!')
    print('It can add and subtract whole numbers from zero to five')
    a = input('Please choose your first number (zero to five): ')
    b = input('What do you want to do? plus or minus: ')
    c = input('Please choose your second number (zero to five): ')
    try:
        a_num = name_to_number[a]
        c_num = name_to_number[c]
        if b=='plus':
            total=a_num+c_num
            total_text=(list(name_to_number.keys())[list(name_to_number.values()).index(total)])
            print(f'{a} {b} {c} equals {total_text}')
            print('Thanks for using this calculator, goodbye :')
        elif b=='minus':
            total=a_num-c_num
            total_text=(list(name_to_number.keys())[list(name_to_number.values()).index(total)])
            print(f'{a} {b} {c} equals {total_text}')
            print('Thanks for using this calculator, goodbye :')
    except:
        print('I am not able to answer this question. Check your input.')

calculator()
