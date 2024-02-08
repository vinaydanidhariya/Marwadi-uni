# 1. Write a Python script to prompt users to enter two values;
# then perform the basic arithmetical operations of addition,
# subtraction, multiplication and division on the values.
val1 = int(input("Enter the first value: "))
val2 = int(input("Enter the second value: "))

print("Addition: ", val1 + val2)
print("Subtraction: ", val1 - val2)
print("Multiplication: ", val1 * val2)
print("Division: ", val1 / val2)
# Enter the first value: 10
# Enter the second value: 20
# Addition:  30
# Subtraction:  -10
# Multiplication:  200
# Division:  0.5

# 2. Write a Python script to prompt users to enter the first and last
# values and generate some random values between the two
# entered values.3
import random
start = int(input("Enter the start value: "))
end = int(input("Enter the end value: "))


rand = random.randint(start, end)
print(rand)
# Enter the start value: 25
# Enter the end value: 50
# 48



# 3. Write a Python program to prompt users to enter a distance in
# kilometers; then convert kilometers to miles, where 1 kilometer
# is equal to 0.62137 miles. Display the result.
km = int(input("Enter the KM value: "))

miles = km * 0.62137
print(miles)


# Enter the KM value: 50
# 31.0685

# 4. Write a Python program to prompt users to enter a Celsius
# value; then convert Celsius to Fahrenheit, where T(°F) = T(°C) x
# 1.8 + 32. Display the result.

Celsius = int(input("Enter the Celsius value: "))

Fahrenheit = Celsius * (9/5) + 32
print("Fahrenheit value :- ",Fahrenheit)


# Enter the Celsius value: 50
# Fahrenheit value :-  122.0



# 5. Write a program to prompt users to enter their working hours
# and rate per hour to calculate gross pay.
# The program should give the employee 1.5 times the hours worked above 30 hours.
# If Enter Hours is 50 and Enter Rate is 10, then the calculated
# payment is Pay: 550.0.

rate = int(input("Enter the rate value: "))
hours = int(input("Enter the hours value: "))
if hours > 30:
     regular_pay = 30 * rate
     overtime_pay = (hours - 30) * (1.5* rate)
     pay = regular_pay + overtime_pay
else:
    pay = hours * rate
print("Pay: ", pay)
# Enter the rate value: 100
# Enter the hours value: 50
# Pay:  6000.0





# 6. Write a program to prompt users to enter a value;
# then check
# whether the entered value is positive or negative value and
# display a proper message.
value = int(input("Enter the value: "))
if value > 0:
    print("Positive value")
else:  
    print("Negative value")
# Enter the value: 10
# Positive value

# 7. Write a program to prompt users to enter a value; then check
# whether the entered value is odd or even and display a proper
# message.
value = int(input("Enter the value: "))

if value%2==0:
    print("Even value")
else:
    print("Odd value")
# Enter the value: 10
# Even value



# 8. Write a program to prompt users to enter an age; then check
# whether each person is a child, a teenager, an adult, or a senior.
# Display a proper message.

value = int(input("Enter the value: "))

if value < 13:
    print("Child")
elif value < 20:
    print("Teenager")
elif value < 60:
    print("Adult")
else:
    print("Senior")
# Enter the value: 10
# Child

# 9. Write a program to prompt users to enter a year; then find
# whether it’s a leap year. A year is considered a leap year if it’s
# divisible by 4 and 100 and 400. If it’s divisible by 4 and 100 but
# not by 400, it’s not a leap year. Display a proper message.
year = int(input("Enter the year: "))
if year%4==0 and year%100==0 and year%400==0:
    print("Leap year")
else:
    print("Not a leap year")
# Enter the year: 2000
# Leap year


# 10. Write a program to prompt users to enter a Fibonacci
# sequence.

num = int(input("Enter the number: "))
n1 = 0
n2 = 1
print(n1, n2,end=" ")
for i in range(2,num):
    n3 = n1 + n2
    n1 = n2
    n2 = n3
    print(n3,end=" ")
    
# Enter the number: 10
# 0 1 1 2 3 5 8 13 21 34

