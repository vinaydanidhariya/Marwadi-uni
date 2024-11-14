'''
Q.10  Implement a stand-alone sender receiver
program in which Sender encrypts a given text
message entered from keyboard in a byte-by-
byte manner using RC4 Stream Cipher and
transmits it to receiver. Receiver Decrypts the
ciphertext displays the decrypted contents on
screen. Use Appropriate package/Library for
RC4.
'''

#pip install receiver
from Crypto.Cipher import ARC4

def receiver():
    # Load the encrypted message from a file or receive it
    with open('encrypted_message.bin', 'rb') as f:
        ciphertext = f.read()

    # Enter the same shared secret key (password) used for encryption
    key = input("Enter the secret key (password) used for encryption: ").encode()

    # Create an RC4 cipher with the provided key
    cipher = ARC4.new(key)

    # Decrypt the ciphertext byte-by-byte
    plaintext = cipher.decrypt(ciphertext)

    print("Decrypted message:", plaintext.decode())

if __name__ == "__main__":
    receiver()
