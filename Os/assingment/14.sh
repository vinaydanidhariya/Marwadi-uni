# Write a shell script to enter any character than find out is it in vowels
# in small or capital case.
echo enter the word
read word
case $word in
[aeiou]*)echo the word starts with small case vowels
;;
[AEIUO]*)echo the word starts with capital case vowels
;;
*[0-9])echo the word ends with digit
;;
???)echo you have entered three character word.
;;
*)echo this is default case
;;
Esac

# output
# enter the word
# aeiou
# the word starts with small case vowels