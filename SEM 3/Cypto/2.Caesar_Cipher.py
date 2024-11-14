'''
Q.2 Write program to implement Caesar cipher.
'''

def caesar_cipher(message, shift):
    encrypted_message = ""

    for char in message:
        if char.isupper():
            encrypted_char = chr((ord(char) + shift - 65) % 26 + 65)
        elif char.islower():
            encrypted_char = chr((ord(char) + shift - 97) % 26 + 97)
        else:
            encrypted_char = char
        encrypted_message += encrypted_char

    return encrypted_message

message = "Hello, world!"
shift = 3
encrypted_message = caesar_cipher(message, shift)

print("Original message:", message)
print("Shift:", shift)
print("Encrypted message:", encrypted_message)
