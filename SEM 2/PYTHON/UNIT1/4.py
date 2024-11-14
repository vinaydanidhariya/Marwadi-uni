def chk_armstrong(num):
    sum = 0
    for i in num:
        sum += int(i) ** len(num)
    return sum == int(num)

arr = [input(f"ENTER NUMBER {i+1} : ") for i in range(10)]
print(arr)

for i in arr:
    if chk_armstrong(i):
        print("NUMBER IS ARMSTRONG", i)
    else:
        print("NUMBER NOT ARMSTRONG", i)



# ENTER NUMBER 1 : 153
# ENTER NUMBER 2 : 154
# ENTER NUMBER 3 : 123
# ENTER NUMBER 4 : 121
# ENTER NUMBER 5 : 152
# ENTER NUMBER 6 : 1456
# ENTER NUMBER 7 : 144
# ENTER NUMBER 8 : 123
# ENTER NUMBER 9 : 366
# ENTER NUMBER 10 : 58
# ['153', '154', '123', '121', '152', '1456', '144', '123', '366', '58']
# NUMBER IS ARMSTRONG 153
# NUMBER NOT ARMSTRONG 154
# NUMBER NOT ARMSTRONG 123
# NUMBER NOT ARMSTRONG 121
# NUMBER NOT ARMSTRONG 152
# NUMBER NOT ARMSTRONG 1456
# NUMBER NOT ARMSTRONG 144
# NUMBER NOT ARMSTRONG 123
# NUMBER NOT ARMSTRONG 366
# NUMBER NOT ARMSTRONG 58