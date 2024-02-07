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
if percentage > 90 and percentage < 100:
    print("Grade A+")
elif percentage > 80 and percentage < 90:
    print("Grade A")
elif(percentage > 70 and percentage < 80):
    print("Grade B")
elif(percentage < 60 and percentage < 70 ):
    print("Grade C")
else:
    print("000000000000000000000000")