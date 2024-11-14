# 6) Write a program to enter age of 50 students and create a histogram to
# display age as group of 0-10, 11-20, 21-30, 31-40, 41-50, 51-60, 60-120

import matplotlib.pyplot as plt

# Enter the age of 50 students
ages = [15, 18, 22, 25, 32, 35, 38, 41, 45, 47, 51, 53, 56, 61, 63, 65, 67, 71,
        73, 10, 78, 34, 50, 60, 87, 20, 19, 17, 22, 39, 29, 60, 55, 8, 57,
        30, 54, 113, 45, 36, 5]


# Create a histogram
plt.hist(ages, bins=[0, 10, 20, 30, 40, 50, 60, 120], edgecolor='black')

# Set the title and labels
plt.title('Age Distribution')
plt.xlabel('Age')
plt.ylabel('Number of Students')

# Display the histogram
plt.show()
