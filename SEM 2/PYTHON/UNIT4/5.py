# 5) Write a program to enter the name of 5 companies and its employee size
# and display as bar graph.

import matplotlib.pyplot as plt

companies = []
employee_size = []

for i in range(5):
    companies.append(input("Enter name of company {}: ".format(i+1)))
    employee_size.append(int(input("Enter employee size of company {}: ".format(i+1))))
    
plt.bar(companies, employee_size)

plt.xlabel("Company")
plt.ylabel("Employee Size")

plt.title("Employee Size vs Company")

plt.show()

# Output:

# Enter name of company 1: Google
# Enter employee size of company 1: 10000
# Enter name of company 2: Microsoft
# Enter employee size of company 2: 20000
# Enter name of company 3: Amazon
# Enter employee size of company 3: 15000
# Enter name of company 4: Facebook
# Enter employee size of company 4: 5000
# Enter name of company 5: Apple
# Enter employee size of company 5: 30000