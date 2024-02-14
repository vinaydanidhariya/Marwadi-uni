# count vowel 
# len of string 
# revers of string 
# find and replace
# palindrom or not

str1 = input("ENTER STRING :- ")

def count_vowel(str1):
    count=0
    for i in str1:
        print(i)
        if(i == 'a' or i == 'i' or i == 'e' or i ==  'o' or i ==  'u'):
            count= count + 1
    print(count)
    
count_vowel(str1)

print(len(str1))
print(str1)
