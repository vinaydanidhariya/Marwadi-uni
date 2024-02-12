

lst=[1,2,3,4,5,6,7,8,9,10] 
num= 0

for i in range(10):
    lst.insert(i,int(input("ENTER NUMBER : ")))

for i in lst:
    if(i%2!=0):#odd
        if(num<i):#max
            num=i
print(num)

# ENTER NUMBER : 12
# ENTER NUMBER : 36
# ENTER NUMBER : 45
# ENTER NUMBER : 21
# ENTER NUMBER : 12
# ENTER NUMBER : 12
# ENTER NUMBER : 132
# ENTER NUMBER : 541
# ENTER NUMBER : 55
# ENTER NUMBER : 15
# 541


