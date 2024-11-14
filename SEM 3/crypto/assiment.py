# 1. Write a python program to Prepare Scatter Plot (Use Iris Dataset) 
import pandas as pd
import matplotlib.pyplot as plt

# Load the iris dataset
iris = pd.read_csv('C:\\xampp\\htdocs\\121359\\Marwadi-uni\\SEM 3\\crypto\\Iriscsv__2024_07_22_14_52_56.csv')

# Plot
plt.scatter(iris['SepalLengthCm'], iris['PetalLengthCm'])
plt.xlabel('Sepal Length')
plt.ylabel('Sepal Width')
plt.title('Sepal Length vs Sepal Width')
plt.show()




# 2. Write a python program to find all null values in a given data set and remove them. 

import pandas as pd

# Load the iris dataset
iris = pd.read_csv('C:\\xampp\\htdocs\\121359\\Marwadi-uni\\SEM 3\\crypto\\Iriscsv__2024_07_22_14_52_56.csv')


# find NULL as N 
iris = iris.replace('N', pd.NA)
# find all null values in the dataset ex like we have N in the dataset string so we have to replace it with pd.NA\
# so find that who are not numeric and replace it with pd.NA
# Species ignore the species column



iris = iris.apply(pd.to_numeric, errors='coerce')

# Find all null values
print(iris.isnull().sum())

# Remove all null values


iris = iris.dropna()
print(iris.isnull().sum())



# 3. Write a python program the Categorical values in numeric format for a given dataset



