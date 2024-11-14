# 3. Load the well-known Tips data set, which shows the number of
# tips received by restaurant staff based on various indicator data;
# then plot the percentage of tips per bill according to staff gender.

import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd

tips = sns.load_dataset("tips")

df=pd.read_csv("tips.csv")

tips=pd.DataFrame(df)
print(tips)

tips['tip_percentage'] = tips['tip'] / tips['total_bill'] * 100

gen=tips['gender'].head(15)
tip_per=tips['tip_percentage'].head(15)

plt.plot(gen,tip_per)

plt.show()

plt.plot(gen,tip_per)    

plt.show()
