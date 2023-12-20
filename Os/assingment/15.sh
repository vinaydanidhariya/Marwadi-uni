# Write a shell script to generate mark sheet of a student. Take 3
# subjects, calculate and display total marks, percentage and Class
# Obtained by the student.
echo " Enter name "
read name
echo " Enter enrollment number "
read no
echo " Enter your marks "

read m1
read m2
read m3
total=$(expr $m1 + $m2 + $m3 )
avg=$(expr $total / 3)
echo "Student Name : $name"
echo "EnrollMent NUmber: $no"
echo "Average is : $avg"
if [ $m1 -ge 35 ] && [ $m2 -ge 35 ] && [ $m3 -ge 35 ]
then
echo "Result is: Pass"
if [ $avg -ge 80 ] && [ $avg -le 100 ]
then
echo "Result is: Distinction"
elif [ $avg -ge 61 ] && [ $avg -le 79 ]
then
echo "Result is: First class"
elif [ $avg -ge 35 ] && [ $avg -le 60 ]
then
echo "Result is: Second class"
fi
else
echo "Result is: fail"
fi


# output
# Enter name
# shubham
# Enter enrollment number
# 123
# Enter your marks
# 45
# 45
# 45
# Student Name : shubham
# EnrollMent NUmber: 123
# Average is : 45
# Result is: Pass
# Result is: Second class
