'''
Q.1.Write a program that contains a string with a
value “Hello World’. The program should XOR
each character in this string with 0 and displays
the result.
'''

string = "epple"
result = ""

for char in string:
    
    
    # XOR the character with 0
    xor_char = chr(ord(char) ^ 1)
    result += xor_char
print(result)