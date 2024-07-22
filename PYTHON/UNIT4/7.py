# 7) Write a program to read above excel file and how many male and female
# students are there using bar graph.
import pandas as pd
import matplotlib.pyplot as plt

# Read the CSV file
df = pd.read_csv("student.csv")

# Count the number of male and female students
male_count = df[df['Gender'] == 'male'].shape[0]
female_count = df[df['Gender'] == 'female'].shape[0]

# Create a bar graph
plt.figure(figsize=(8, 6))
plt.bar(['Male', 'Female'], [male_count, female_count])
plt.xlabel('Gender')
plt.ylabel('Number of Students')
plt.title('Number of Male and Female Students')
plt.show()
