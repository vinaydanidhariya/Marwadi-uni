

lst=[] 
num= 0
for i in range(10):
    lst[i] = int(input("ENTER NUMBER : "))
    if(i%2==0):
        if(num<i):
            num=i
print(num)


