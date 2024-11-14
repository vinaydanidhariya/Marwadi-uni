# 8. Python program of Histogram with all parameters of a sample
# data.


import seaborn as sns
import matplotlib.pyplot as plt

data = [23, 45, 56, 78, 34, 56, 67, 89, 90, 32, 45, 56, 67, 78, 89, 90, 23, 34, 45, 56]

sns.histplot(data, bins=10, kde=True, color='blue')

plt.xlabel('Values')
plt.ylabel('Frequency')
plt.title('Histogram Example')

plt.show()
