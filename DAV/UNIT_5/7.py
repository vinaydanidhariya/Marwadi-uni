# 7. Python program of Pie-chart with all parameters of a sample
# data.

import matplotlib.pyplot as plt
import numpy as np


cars = ['AUDI', 'BMW', 'FORD','TESLA', 'JAGUAR', 'MERCEDES']
price = [23, 17, 35, 29, 12, 41]

col=plt.cm.Accent(range(len(price)))


plt.figure(figsize =(5, 5))

plt.pie(price,labels = cars,radius=0.5,textprops={'fontsize':7},colors=col,startangle=90,explode=[0,0,0,0,0.1,0],shadow=True,autopct='%1.1f%%')

plt.legend(loc="upper right",fontsize=6,title='Cars_PieChart',bbox_to_anchor=(1,1))

plt.savefig("Car_Pie_Chart.png")

plt.show()
