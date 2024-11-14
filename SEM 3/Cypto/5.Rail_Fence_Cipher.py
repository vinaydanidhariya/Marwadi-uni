'''
Q.5 Write a program to implement Rail fence cipher
'''

def rail_fence_cipher(plaintext, rails):
    fence = [[] for i in range(rails)]
    rail = 0
    direction = 1
    for letter in plaintext:
        fence[rail].append(letter)
        rail += direction
        if rail == rails : # - 1 or rail == 0:
            rail=0
            #direction = -direction
    
    ciphertext = ""
    for rail in fence:
        for letter in rail:
            ciphertext += letter
    
    return ciphertext

plaintext = "HELLO WORLD"
rails = 3
ciphertext = rail_fence_cipher(plaintext, rails)

print("Plaintext:", plaintext)
print("Rails:", rails)
print("Ciphertext:", ciphertext)
