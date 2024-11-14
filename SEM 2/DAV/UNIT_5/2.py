#2. Load the well-known Iris data set, which lists measurements ofpetals and sepals of three iris species. 
# Then plot the correlationsbetween each pair using the .pairplot() method.

import seaborn as sns
import matplotlib.pyplot as plt
import pandas as pd

df = pd.read_csv("iris.csv")
print(df)
print(df.head())

sns.pairplot(df, hue ='class')
plt.savefig("iris_pairplot.png")
plt.show()