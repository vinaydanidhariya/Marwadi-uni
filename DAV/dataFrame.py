# write a proram to create one dataframe movies moviesId moviesName actor actireess ratin

import pandas as pd 

data = {
    "movieId":[1,2,3],
    "movieName":['race',"bahubali","hanuman"],
    "actor":['akshay',"Arjun","ram"],
    "actoress":['kinjal',"vaishali","shita"]
}

new = pd.DataFrame(data)
# print(new[['movieName']])
# print(new[['actor']])
# print(new.shape)
# print(new.columns)
# print(new.info)
# print(new.loc[2])
# print(new.iloc[2])
# print(new.head())
# print(new.tail())
new.index=['a','b','c']
print(new.loc[((new.actor=='ram' )& (new.actoress =='sita'))])



#    movieId movieName   actor  actoress
# 0        1      race  akshay    kinjal
# 1        2  bahubali   Arjun  vaishali
# 2        3   hanuman     ram     shita