arr = []

for i in range(10):
    arr.append(input(f"ENTER NUMBER {i+1} : "))

print(arr)

def chk_armstrong(num):
    sum =0
    for i in num:
        sum = sum +pow(int(i),len(num))
    if(int(sum) == int(num)):
        return True
    else: 
        return False
    


num1 =chk_armstrong('153')
print(num1) 
for i in arr:
    ifnum = chk_armstrong(i) 
    if(ifnum == True):
        print("NUMBER IS ARMSTRONG ",i)
    else:
        print("NUMBER NOT ARMSTRONG ",i)



# ENTER NUMBER 1 : 153
# ENTER NUMBER 2 : 156
# ENTER NUMBER 3 : 456
# ENTER NUMBER 4 : 1634
# ENTER NUMBER 5 : 265
# ENTER NUMBER 6 : 11
# ENTER NUMBER 7 : 46854
# ENTER NUMBER 8 : 45
# ENTER NUMBER 9 : 352
# ENTER NUMBER 10 : 255
# ['153', '156', '456', '1634', '265', '11', '46854', '45', '352', '255']
# True
# NUMBER IS ARMSTRONG  153
# NUMBER NOT ARMSTRONG  156
# NUMBER NOT ARMSTRONG  456
# NUMBER IS ARMSTRONG  1634
# NUMBER NOT ARMSTRONG  265
# NUMBER NOT ARMSTRONG  11
# NUMBER NOT ARMSTRONG  46854
# NUMBER NOT ARMSTRONG  45
# NUMBER NOT ARMSTRONG  352
# NUMBER NOT ARMSTRONG  255