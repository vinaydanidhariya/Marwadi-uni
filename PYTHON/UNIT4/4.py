# 4) Write a program to enter the profit of 5 years and display the profit as
# line graph.

import matplotlib.pyplot as plt

profit = []
for i in range(5):
    profit.append(int(input("Enter profit for year {}: ".format(i+1))))
    
plt.plot(range(1, 6), profit)

plt.xlabel("Year")
plt.ylabel("Profit")
plt.title("Profit vs Year")

plt.show()

# Output:
# Enter profit for year 1: 300000
# Enter profit for year 2: 500000
# Enter profit for year 3: 700000
# Enter profit for year 4: 900000
# Enter profit for year 5: 1000000

