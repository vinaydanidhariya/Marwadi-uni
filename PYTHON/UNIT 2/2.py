#2.write a program to execute user define exception in python.

class InvalidAgeException(Exception):
    "Raised when the input value is less than 18"
    pass
number = 18

try:
    input_num = int(input("Enter a number: "))
    if input_num < number:
        raise InvalidAgeException
    else:
        print("Eligible to Vote")
        
except InvalidAgeException:
    print("Exception occurred: Invalid Age")


#output:-
#Enter a number: 20
#Eligible to Vote