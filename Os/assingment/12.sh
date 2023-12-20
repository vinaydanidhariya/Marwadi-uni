# Write a shell script to display multiplication table of given
# Number.
clear
echo -----------------------------------
echo '\tMultiplication Table'
echo -----------------------------------
echo Enter table number
read tn
echo Enter how many rows
read n
i=1
while [ $i -le $n ]
do
k=$(expr $i \* $tn)
echo "$i * $tn = $k"
i=$(expr $i + 1)
done

#output
# -----------------------------------
# Multiplication Table
# -----------------------------------
# Enter table number
# 5
# Enter how many rows
# 10
# 1 * 5 = 5
# 2 * 5 = 10
# 3 * 5 = 15
# 4 * 5 = 20
# 5 * 5 = 25
# 6 * 5 = 30
# 7 * 5 = 35
# 8 * 5 = 40
# 9 * 5 = 45
# 10 * 5 = 50
