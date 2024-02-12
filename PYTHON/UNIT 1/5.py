

lst=[1,2,3,4,5,6,7,8,9,10] 
num= 0

for i in range(10):
    lst.insert(i,int(input("ENTER NUMBER : ")))

for i in lst:
    if(i%2!=0):#odd
        if(num<i):#max
            num=i
print(num)


