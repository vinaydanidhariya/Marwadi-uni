# count vowel 
# len of string 
# revers of string 
# find and replace
# palindrom or not

str1 = input("ENTER STRING :- ")
LENGTH = 0
count=0
for i in str1:
    LENGTH += 1
    if(i in 'aeiou'):
        count += 1

print("COUNT OF VOWEL ",count)
print("LENGTH OF STRING : ",LENGTH)  
# revers string
reversedstr = str1[::-1]
print("REVERSED STRING : ",reversedstr)
# find and repace
print(str1.replace('a','*'))
# palindrom of not
if(str1==reversedstr):
    print("PALINDROM")
else:
    print("NOT PALINDROM")


# ENTER STRING :- vinay
# COUNT OF VOWEL  2
# LENGTH OF STRING :  5
# REVERSED STRING :  yaniv
# vin*y
# NOT PALINDROM


