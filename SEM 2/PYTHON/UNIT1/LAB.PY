# to create list of products along with price e.g. laptop=50000 mobile=4000
# insert five record 
# print apropriate list

# productList = []
# priceList = []

# for i in range(1):
#     pnm =input("ENTER PRODUCT NAME : ")
#     ppr = int(input("ENTER PRODUCT PRICE : "))
#     productList.append(pnm)
#     priceList.append(ppr)

# for i in range(len(priceList)):
#     print(productList[i],priceList[i])


# productList = []

# for i in range(1):
#     pnm = input("ENTER PRODUCT NAME : ")
#     ppr = int(input("ENTER PRODUCT PRICE : "))
#     productList.append({'name': pnm, 'price': ppr})

# for product in productList:
#     print(product['name'], product['price'])



# write a program to check gien string has total num of vowel 
import time



str1 = (input("enter string : ")).lower()
count =0
vowelcount = {
    'a': 0,
    'e':0,
    'i':0,
    'o':0,
    'u':0
}
start_time = time.time()
for i in str1:
    if(i == 'a' or i == 'i' or i=='e' or i=='o' or i=='u'):
        count+=1
        if(i == 'a'):
            vowelcount['a'] += 1
         
        if(i == 'i'):
            vowelcount['i'] += 1

        
        if(i == 'e'):
            vowelcount['e'] += 1
        
        if(i == 'o'):
            vowelcount['o'] += 1
        
        if(i == 'u'):
            vowelcount['u'] += 1

for i in vowelcount:
    print(i,vowelcount[i] )
print(count)   
end_time = time.time()

print(start_time, "   ",end_time)
print(f"Time: {end_time - start_time} seconds")


# str1 = input("Enter string: ")

# count = sum(1 for char in str1 if char.lower() in 'aeiou')

# print(count)

#10 num wirte a prg user inpout of 10 number and create odd and even list separatelyt check it out maximum number of and even list
# find max even and odd max



# write a prg to take user in put for list of numbe r and u have to create lsir of 
    # squre of even number and
    #  qube odd number out of it


enter string : PARTH
a 1
e 0
i 0
o 0
u 0
1
1707990290.0362744     1707990290.0389001
Time: 0.002625703811645508 seconds
