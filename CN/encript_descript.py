# 2. Write program to implement Caesar cipher
# Code:

def caesar_cipher(message, shift):
    # Create an empty string to store the encrypted message
    encrypted_message = ""
    # Iterate over each character in the message
    for char in message:
    # If the character is an uppercase letter
        if char.isupper():
            # Apply the shift and wrap around the alphabet if necessary
            encrypted_char = chr((ord(char) + shift - 65) % 26 + 65)
            # If the character is a lowercase letter
        elif char.islower():
            # Apply the shift and wrap around the alphabet if necessary
            encrypted_char = chr((ord(char) + shift - 97) % 26 + 97)
        else:
            # If the character is not a letter, leave it as is
            encrypted_char = char
        # Append the encrypted character to the encrypted message
        encrypted_message += encrypted_char                                     
    # Return the encrypted message
    return encrypted_message

# Example usage
message = "Hello, world!"
shift = 5
encrypted_message = caesar_cipher(message, shift)
print("Original message:", message)
print("Shift:", shift)
print("Encrypted message:", encrypted_message)

def descript_caesar_cipher(message, shift):
    # Create an empty string to store the encrypted message
    encrypted_message = ""
    # Iterate over each character in the message
    for char in message:
    # If the character is an uppercase letter
        if char.isupper():
            # Apply the shift and wrap around the alphabet if necessary
            encrypted_char = chr((ord(char) - shift - 65) % 26 + 65)
            # If the character is a lowercase letter
        elif char.islower():
            # Apply the shift and wrap around the alphabet if necessary
            encrypted_char = chr((ord(char) - shift - 97) % 26 + 97)
        else:
            # If the character is not a letter, leave it as is
            encrypted_char = char
        # Append the encrypted character to the encrypted message
        encrypted_message += encrypted_char                                     
    # Return the encrypted message
    return encrypted_message


descripted_message = descript_caesar_cipher(encrypted_message,shift)
print("descropt",descripted_message)
# Output:
# Original message: Hello, world!
# Shift: 3
# Encrypted message: Khoor, zruog!

# command
# increiot descipt
# wireshark ex