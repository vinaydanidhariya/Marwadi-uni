# write a program result 
# 4 subject
# total 
# percentage 
# grade


sub1= float(input("Enter subject 1 Mark :"))
sub2= float(input("Enter subject 2 Mark :"))
sub3= float(input("Enter subject 3 Mark :"))
sub4= float(input("Enter subject 4 Mark :"))

total = sub1+ sub2 + sub3 + sub4
percentage = total/4
grade = 0 
print("Total : " , total)
print("Percentage : " ,percentage)

if sub1< 39 and sub2< 39  and sub3< 39 and sub4< 39 :
    if percentage >= 90 and percentage <= 100:
        print("Grade A+")
    elif percentage >= 80 and percentage <= 90:
        print("Grade A")
    elif(percentage >= 70 and percentage <= 80):
        print("Grade B")
    elif(percentage >= 60 and percentage <= 70 ):
        print("Grade C")
    elif(percentage >= 50 and percentage <= 60 ):
        print("Grade D")
    elif(percentage >= 40 and percentage <= 50 ):
        print("Grade E")
else:
        print("FAIL")

# Enter subject 1 Mark :39
# Enter subject 2 Mark :40
# Enter subject 3 Mark :25
# Enter subject 4 Mark :60
# Total :  164.0
# Percentage :  41.0
# FAIL