# 10. Python program of Scatter plot with all parameters of a
# sample data.

import seaborn as sns
import matplotlib.pyplot as plt

x_values = [5, 7, 8, 7, 2, 17, 2, 9, 4, 11, 12, 9, 6]
y_values = [99, 86, 87, 88, 100, 86, 103, 87, 94, 78, 77, 85, 86]

sns.scatterplot(x=x_values, y=y_values, color='green')

plt.xlabel('X-axis')
plt.ylabel('Y-axis')
plt.title('Scatter Plot Example')

plt.show()
