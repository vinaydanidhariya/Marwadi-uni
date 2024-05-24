#Create 500 random temperature readings for sixcities over aseason and then plot the generated datausing Matplotlib.

import pandas as pd
import matplotlib.pyplot as plt
import random


temp1 = list(random.sample(range(0,100), 50))
temp2 = list(random.sample(range(0,100), 50))
temp3 = list(random.sample(range(0,100), 50))
temp4 = list(random.sample(range(0,100), 50))
temp5 = list(random.sample(range(0,100), 50))
temp6 = list(random.sample(range(0,100), 50))

Cities={'Mumbai':temp1,'Hydrabad':temp2,'Pune':temp3,'Shimla':temp4,'Delhi':temp5,'Banglore':temp6}

print(Cities)

df=pd.DataFrame(Cities)
print(df)

df.plot(kind='line') #line,bar,hist,box,are,pie,scatter etc
plt.show()
