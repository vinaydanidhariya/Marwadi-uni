# Write A Script To Perform Following String Operations Using Menu:
# 1. FIND THE OCCURRENCE OF A CHARACTER FROM A STRING.
# 2. JOIN TWO STRINGS.
# 3.FIND THE LENGTH OF A GIVEN STRING.
# 4.REVERSE THE STRING.
choice=y
while [ "$choice" = "y" ]
do
clear
echo "What do you want to perform?"
echo "1. COMAPRE TWO STRINGS"
echo "2. JOIN TWO STRINGS"
echo "3. FIND THE LENGTH OF A GIVEN STRING"
echo "4. OCCURRENCE OF A CHARACTER AND WORDS"
echo "5. REVERSE THE STRING"

echo ""
echo -n "Enter Your Choice: "
read ch
case $ch in
1) echo "Enter First String: "
read str1
echo "Enter Second String: "
read str2
if [ "$str1" = "$str2" ]
then
echo "Both Strings are Same..."
else
echo "Both Strings are Different..."
fi
;;
2) echo -n "Enter First String: "
read str1
echo -n "Enter Second String: "
read str2
newstr=$str1$str2
echo "After joining $str1 and $str2 : "
echo $newstr
;;
3) echo -n "Enter String: "
read str
len=`echo $str | wc -c`
len=`expr $len - 1`
echo "Length Of a Given String Is: "$len
;;
4) echo -n "Enter a String: "
read str

echo -n "Enter a Character Which You Want To Count: "

read char

echo -n "Enter a Word Which You Want To Count: "
read wrd
c=0

len=`echo $str | wc -c`
len=`expr $len - 1`

i=1
while [ $i -le $len ]
do

tmp=`echo $str | cut -c $i`
if [ "$tmp" = "$char" ]
then
c=`expr $c + 1`
fi
i=`expr $i + 1`
done
w=0
for i in $str
do
if [ "$i" = "$wrd" ]
then
w=`expr $w + 1`
fi
done
echo "No. Of Occurrence of Character $char Is: "$c
echo "No. Of Occurrence of Word $wrd Is: "$w
;;

5) echo -n "Enter a String: "
read str
len=`echo $str | wc -c`

len=`expr $len - 1`
while [ $len -gt 0 ]
do
c=`echo $str | cut -c $len`
revstr=$revstr$c
len=`expr $len - 1`

done
echo "The String Is Reversed..."
echo "The Reverse String Is: "$revstr
;;
*) echo "Invalid Input"

;;
esac
echo ""
echo -n "Do u want to continue? [y/n]"
read ch1
case $ch1 in
Y|y) choice=y
;;
N|n) choice=n
;;
*) choice=y
;;
esac
done

# output
# What do you want to perform?
# 1. COMAPRE TWO STRINGS
# 2. JOIN TWO STRINGS
# 3. FIND THE LENGTH OF A GIVEN STRING
# 4. OCCURRENCE OF A CHARACTER AND WORDS
# 5. REVERSE THE STRING
#
# Enter Your Choice: 1
# Enter First String:
# shubham
# Enter Second String:
# shubham
# Both Strings are Same...  
# Do u want to continue? [y/n]y
