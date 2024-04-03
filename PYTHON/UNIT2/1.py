#1.Write a program to display basic exception handling in python

a=10
b=0
try:
    result=a/b
    print(result)
except:
    print("can not divide by zero")
finally:
    print("hello MU")

# Output:-
# can not divide by zero
# hello MU