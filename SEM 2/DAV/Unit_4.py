import numpy as np
import pandas as pd
from IPython.display import display
data = {'Animal': ['at', 'cat', 'snake', 'dog', 'dog', 'cat', 'snake', 'cat', 'dog', 
'dog'],
  'Age': [2.5, 3.0, 0.5, np.nan, 5.0, 2.0, 4.5, np.nan, 7, 3],
  'Priority': ['yes', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'no', 'no'],
  'Visits': [1,3,2,3,2,3,1,1,2,1] }
labels = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j']
print(data)
#{'Animal': ['at', 'cat', 'snake', 'dog', 'dog', 'cat', 'snake', 'cat', 'dog', 'dog'],
#'Age': [2.5, 3.0, 0.5, nan, 5.0, 2.0, 4.5, nan, 7, 3],
#'Priority': ['yes', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'no', 'no'],
#'Visits': [1, 3, 2, 3, 2, 3, 1, 1, 2, 1]}

#PRG_1:-
df = pd.DataFrame(data,index=labels)
print(df)
display(df)

#   Animal  Age Priority  Visits
# a     at  2.5      yes       1
# b    cat  3.0      yes       3
# c  snake  0.5       no       2
# d    dog  NaN      yes       3
# e    dog  5.0       no       2
# f    cat  2.0       no       3
# g  snake  4.5       no       1
# h    cat  NaN      yes       1
# i    dog  7.0       no       2
# j    dog  3.0       no       1

#prg:-2

print("summary of dataframe is:")
print(df.info())

# Index: 10 entries, a to j
# Data columns (total 4 columns):
#  #   Column    Non-Null Count  Dtype
# ---  ------    --------------  -----
#  0   Animal    10 non-null     object
#  1   Age       8 non-null      float64
#  2   Priority  10 non-null     object
#  3   Visits    10 non-null     int64
# dtypes: float64(1), int64(1), object(2)
# memory usage: 400.0+ bytes
# None

#prg:-3
print(df.head(3))

#   Animal  Age Priority  Visits
# a     at  2.5      yes       1
# b    cat  3.0      yes       3
# c  snake  0.5       no       2

#prg:-4
print("dataframe with only 2 column")
print(df[['Animal','Age']])

#   Animal  Age
# a     at  2.5
# b    cat  3.0
# c  snake  0.5
# d    dog  NaN
# e    dog  5.0
# f    cat  2.0
# g  snake  4.5
# h    cat  NaN
# i    dog  7.0
# j    dog  3.0

#prg-5
grp=df.groupby('Priority')
for i in grp:
     print(i)
    
# ('no',   Animal  Age Priority  Visits
# c  snake  0.5       no       2       
# e    dog  5.0       no       2       
# f    cat  2.0       no       3       
# g  snake  4.5       no       1       
# i    dog  7.0       no       2       
# j    dog  3.0       no       1)      
# ('yes',   Animal  Age Priority  Visits
# a     at  2.5      yes       1        
# b    cat  3.0      yes       3        
# d    dog  NaN      yes       3        
# h    cat  NaN      yes       1)  

#prg-6
print('mean of age is :', df['Age'].mean())

#mean of age is : 3.4375

#prg-7
print(df.describe())

#             Age     Visits
# count  8.000000  10.000000
# mean   3.437500   1.900000
# std    2.007797   0.875595
# min    0.500000   1.000000
# 25%    2.375000   1.000000
# 50%    3.000000   2.000000
# 75%    4.625000   2.750000
# max    7.000000   3.000000

#prg-8
print(df.iloc[:3])

#  Animal  Age Priority  Visits
# a     at  2.5      yes       1
# b    cat  3.0      yes       3
# c  snake  0.5       no       2

#prg-9
print(df.iloc[:,[0,3]])

# Animal  Visits
# a     at       1
# b    cat       3
# c  snake       2
# d    dog       3
# e    dog       2
# f    cat       3
# g  snake       1
# h    cat       1
# i    dog       2
# j    dog       1


print(df.iloc[ : , 0],df.iloc[: , 3])

# a       at
# b      cat
# c    snake
# d      dog
# e      dog
# f      cat
# g    snake
# h      cat
# i      dog
# j      dog
# Name: Animal, dtype: object a    1
# b    3
# c    2
# d    3
# e    2
# f    3
# g    1
# h    1
# i    2
# j    1
# Name: Visits, dtype: int64

#prg-11 
print(df.ndim)
print(df.shape)

#2
#(10, 4)



