#opration on list 

size = int(input("ENTER SIZE OF LIST : "))


list1 = []
for i in range(size):
    list1.append(input(f"ENTER NUMBER {i+1} : "))
    
print(list1)
#create switch case for list operation
print("1. APPEND")
print("2. INSERT")
print("3. REMOVE")
print("4. POP")
print("5. COUNT")
print("6. EXTEND")
print("7. INDEX")
print("8. REVERSE")
print("9. SORT")
print("10. LEN")
print("11. MAX")
print("12. MIN")
print("13. SUM")
print("14. DEL")
print("15. COPY")
print("16. CLEAR")
print("17. EXIT")

while True:
    choice = int(input("ENTER CHOICE : "))
    if choice == 1:
        value = input("ENTER NUMBER : ")
        list1.append(value)
        print(list1)
    elif choice == 2:
        position = int(input("ENTER POSITION : "))
        value = input("ENTER VALUE : ")
        list1.insert(position,value)
        print(list1)
    elif choice == 3:
        value = input("ENTER VALUE : ")
        list1.remove(value)
        print(list1)
    elif choice == 4:
        list1.pop()
        print(list1)
    elif choice == 5:
        value = input("ENTER VALUE : ")
        print(list1.count(value))
    elif choice == 6:
        list2 = []
        for i in range(3):
            list2.append(input(f"ENTER NUMBER {i+1} : "))
        list1.extend(list2)
        print(list1)
    elif choice == 7:
        value = input("ENTER VALUE : ")
        print(list1.index(value))
    elif choice == 8:
        list1.reverse()
        print(list1)
    elif choice == 9:
        list1.sort()
        print(list1)
    elif choice == 10:
        print(len(list1))
    elif choice == 11:
        print(max(list1))
    elif choice == 12:
        print(min(list1))
    elif choice == 13:
        for i in range(len(list1)):
            list1[i] = int(list1[i])
        print(sum(list1))
    elif choice == 14:
        position = int(input("ENTER POSITION : "))
        del list1[position]
        print(list1)
    elif choice == 15:
        list2 = list1.copy()
        print(list2)
    elif choice == 16:
        list1.clear()
        print(list1)
    elif choice == 17:
        break
    else:
        print("INVALID CHOICE")
        
#output
# ENTER SIZE OF LIST : 5
# ENTER NUMBER 1 : 1
# ENTER NUMBER 2 : 2
# ENTER NUMBER 3 : 3
# ENTER NUMBER 4 : 4
# ENTER NUMBER 5 : 5
# ['1', '2', '3', '4', '5']
# 1. APPEND
# 2. INSERT
# 3. REMOVE
# 4. POP
# 5. COUNT
# 6. EXTEND
# 7. INDEX
# 8. REVERSE
# 9. SORT
# 10. LEN
# 11. MAX
# 12. MIN
# 13. SUM
# 14. DEL
# 16. COPY
# 15. CLEAR
# 17. EXIT
# ENTER CHOICE : 1
# ENTER NUMBER : 6
# ['1', '2', '3', '4', '5', '6']
# ENTER CHOICE : 2
# ENTER POSITION : 6
# ENTER VALUE : 7
# ['1', '2', '3', '4', '5', '6', '7']
# ENTER CHOICE : 3
# ENTER VALUE : 7
# ['1', '2', '3', '4', '5', '6']
# ENTER CHOICE : 4
# ['1', '2', '3', '4', '5']
# ENTER CHOICE : 5
# ENTER VALUE : 1
# 1
# ENTER CHOICE : 6
# ENTER NUMBER 1 : 6
# ENTER NUMBER 2 : 7
# ENTER NUMBER 3 : 8
# ['1', '2', '3', '4', '5', '6', '7', '8']      
# ENTER CHOICE : 7
# ENTER VALUE : 5
# 4
# ENTER CHOICE : 8
# ['8', '7', '6', '5', '4', '3', '2', '1']      
# ENTER CHOICE : 9
# ['1', '2', '3', '4', '5', '6', '7', '8']      
# ENTER CHOICE : 10
# 8
# ENTER CHOICE : 12
# 1
# ENTER CHOICE : 11
# 8
# ENTER CHOICE : 12
# 1
# ENTER CHOICE : 13
# 36
# ENTER CHOICE : 14
# ENTER POSITION : 7
# [1, 2, 3, 4, 5, 6, 7]
# ENTER CHOICE : 15
# [1, 2, 3, 4, 5, 6, 7]
# ENTER CHOICE : 16
# []
