import sklearn
print(sklearn.__version__)
from sklearn.tree import DecisionTreeClassifier,plot_tree
import pandas as pd

data = pd.read_csv('data.csv')
dt =DecisionTreeClassifier()

x= data[['company','job',"deg"]]
y = data[['sal']]

x['company'] = x['company'].map({"g":0,"a":1,"f":2})

d = {"t1":1,"sp":2,"p":3}

x["job"] = x['job'].map(d)

x["deg"] = x["deg"].map({"b":1,"m":2})

dt = dt.fit(x,y)

plot_tree(dt)

print(dt.predict([[0,2,1]]))