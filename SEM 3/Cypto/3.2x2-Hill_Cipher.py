'''
Q.3 Write a program to implement 2x2 Hill cipher.
'''

import numpy as np
from numpy.linalg import inv

def hill_cipher_2x2_encrypt(plaintext, key):
    plaintext = plaintext.upper()

    if len(plaintext) % 2 == 1:
        plaintext += 'X'

    plaintext_pairs = []
    for i in range(0, len(plaintext), 2):
        pair = [ord(plaintext[i]) - 65, ord(plaintext[i+1]) - 65]
        plaintext_pairs.append(pair)
        #print(plaintext_pairs)

    #print(plaintext_pairs)
    key_matrix = np.array(key).reshape(2, 2)

    ciphertext_pairs = []
    for pair in plaintext_pairs:
        plaintext_matrix = np.array(pair).reshape(2, 1)
        ciphertext_matrix = np.matmul(key_matrix, plaintext_matrix) % 26
        ciphertext_pairs.append(ciphertext_matrix.flatten().tolist())
        #print(ciphertext_pairs)

    ciphertext = ""
    for pair in ciphertext_pairs:
        ciphertext += chr(pair[0] + 65) + chr(pair[1] + 65)
        #print(ciphertext)

    return ciphertext

def hill_cipher_2x2_decrypt(ciphertext, key, size):
    ciphertext_pairs = []
    for i in range(0, len(ciphertext), 2):
        pair = [ord(ciphertext[i]) - 65, ord(ciphertext[i+1]) - 65]
        ciphertext_pairs.append(pair)
        #print(ciphertext_pairs)
    key_matrix = np.array(key).reshape(2, 2)
    key_inverse = inv(key_matrix)

    plaintext_pairs = []
    for pair in ciphertext_pairs:
        ciphertext_matrix = np.array(pair).reshape(2, 1)
        plaintext_matrix = np.matmul(key_inverse, ciphertext_matrix) % 26
        plaintext_pairs.append(plaintext_matrix.flatten().tolist())
    
    newMtrx = plaintext_pairs
    
    for i in range(3):
        a = plaintext_pairs[i][0]
        b = plaintext_pairs[i][1]
        newMtrx[i][0] = round(a)
        newMtrx[i][1] = round(b)

    

    plaintext = ""
    for pair in newMtrx:
        plaintext += chr(int(pair[0]) + 65) + chr(int(pair[1]) + 65)

    if(size%2!=0):
        plaintext = plaintext[0:size]
    return plaintext

plaintext = "HELLO"
size = len(plaintext)
key = [[3, 4], [2, 3]]
ciphertext = hill_cipher_2x2_encrypt(plaintext, key)
decrypted_plaintext = hill_cipher_2x2_decrypt(ciphertext, key, size)

print("Plaintext:", plaintext)
print("Key:", key)
print("Ciphertext:", ciphertext)
print("Decrypted plaintext:", decrypted_plaintext)
