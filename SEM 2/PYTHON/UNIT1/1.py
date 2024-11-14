# write a program to print pyramid

# *

# * *

# * * *

# * * * *

# * * * * *
# i = 0
# while(i<5):
#     j= 0
#     while(j<i):
#         print("*" ,end =" ")
#         j=j+1
#     print("\n")
#     i=i+1
 
 
i = 0
for i in range(5):
    j= 0
    for j in range(i):
        print("*" ,end =" ")
        # j=j+1
    print("\n")
    # i=i+1   
    
# * * * * *

# * * * * *

# * * * * *

# * * * * *
# i = 0
# while(i<5):
#     j= 0
#     while(j<5):
#         print("*" ,end =" ")
#         j=j+1
#     print("\n")
#     i=i+1
    
# * * * * *

# * * * * *

# * * * * *

# * * * * *
# i = 0
# while(i<5):
#     j= 0
#     while(j<5):
#         print("*" ,end =" ")
#         j=j+1
#     print("\n")
#     i=i+1


print("hello")
i = 0
while i < 5:
    i += 1
    print("*")
    
    
#1. write a program p r n simple interest

P = float(input("Enter a Price : "))
R = float(input("Enter a Rate : "))
N = float(input("Enter a Time in month : "))


simple_interest = P*R*(N/12)/100

print("simple interest : ",simple_interest)
print("All Amount with simple interest is : ",simple_interest+P)

# OUTPUT
# Enter a Price : 100
# Enter a Rate : 20
# Enter a Time in month : 12
# simple interest :  20.0
# All Amount with simple interest is :  120.0 