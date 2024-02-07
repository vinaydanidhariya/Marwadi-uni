# Write a shell script to enter any character than find out is it in
# upper/lower case or digit?

echo enter any character
read character
case $character in
[a-z])echo you have entered small character
;;
[A-Z])echo you have entered capital character
;;
[0-9])echo you have entered digit
;;
?)echo you have entered a special character
;;
*)echo you have entered more than one character
;;

# output
# enter any character
# a
# you have entered small character