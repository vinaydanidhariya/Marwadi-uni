# 4. Load the well-known Tips data set, which shows the number of
# tips received by restaurant staff based on various indicator data;
# then implement the factor plots to visualize the total bill per day
# according to staff gender.

import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

data=pd.read_csv("tips.csv")

print(data)

sns.pointplot(x ='size',y ='tip',hue ='gender', data = data)

plt.savefig("tips_pointplot.png")

plt.show()