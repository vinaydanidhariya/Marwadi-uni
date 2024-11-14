'''
Q.4 Write a program to implement Playfair cipher.
'''

def playfair_cipher(plaintext, key):
    plaintext = plaintext.replace(" ", "").upper()
    
    key = key.upper()
    key_table = []
    for letter in key:
        if letter not in key_table and letter != "J":
            key_table.append(letter)
    for letter in "ABCDEFGHIKLMNOPQRSTUVWXYZ":
        if letter not in key_table:
            key_table.append(letter)
    key_table = [key_table[i:i+5] for i in range(0, 25, 5)]
    
    plaintext_pairs = []
    for i in range(0, len(plaintext), 2):
        if i+1 < len(plaintext) and plaintext[i] != plaintext[i+1]:
            plaintext_pairs.append(plaintext[i:i+2])
        #elif i+1 == len(plaintext):
         #   plaintext_pairs.append(plaintext[i] + "X")
        else:
            plaintext_pairs.append(plaintext[i] + "X")
    
    ciphertext = ""
    for pair in plaintext_pairs:
        letter1, letter2 = pair[0], pair[1]
        row1, col1 = divmod(key_table.index([c for c in key_table if letter1 in c][0]), 5)
        row2, col2 = divmod(key_table.index([c for c in key_table if letter2 in c][0]), 5)
        if row1 == row2:
            ciphertext += key_table[row1][(col1+1)%5] + key_table[row2][(col2+1)%5]
        elif col1 == col2:
            ciphertext += key_table[(row1+1)%5][col1] + key_table[(row2+1)%5][col2]
        else:
            ciphertext += key_table[row1][col2] + key_table[row2][col1]
    
    return ciphertext

plaintext = "HELLO WORLD"
key = "example"
ciphertext = playfair_cipher(plaintext, key)

print("Plaintext:", plaintext)
print("Key:", key)
print("Ciphertext:", ciphertext)

"""
This is the another way to find position of char
def find_position(matrix, char):
    for i in range(5):
        for j in range(5):
            if matrix[i][j] == char:
                return (i, j)
    return None
"""
