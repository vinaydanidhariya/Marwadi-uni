string = "Hello World" 
result = "" 
for char in string: 
    xor_char = chr(ord(char) ^ 0) 
    result += xor_char 
print(result)
