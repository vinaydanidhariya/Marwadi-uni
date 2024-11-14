'''
Q.6 WAP Encryption and decryption using DES Algorithm.
'''
#pip install pycryptodomex  or   pip install pycryptodome  or pip install cryptodome

from Crypto.Cipher import DES
from Crypto.Util.Padding import pad, unpad

def encrypt_ecb(data, key):
    cipher = DES.new(key, DES.MODE_ECB)
    ciphertext = cipher.encrypt(pad(data, 8))
    return ciphertext

def decrypt_ecb(ciphertext, key):
    cipher = DES.new(key, DES.MODE_ECB)
    plaintext = unpad(cipher.decrypt(ciphertext), 8)
    return plaintext

def encrypt_cbc(data, key, iv):
    cipher = DES.new(key, DES.MODE_CBC, iv)
    ciphertext = cipher.encrypt(pad(data, 8))
    return ciphertext

def decrypt_cbc(ciphertext, key, iv):
    cipher = DES.new(key, DES.MODE_CBC, iv)
    plaintext = unpad(cipher.decrypt(ciphertext), 8)
    return plaintext

def encrypt_cfb(data, key, iv):
    cipher = DES.new(key, DES.MODE_CFB, iv)
    ciphertext = cipher.encrypt(data)
    return ciphertext

def decrypt_cfb(ciphertext, key, iv):
    cipher = DES.new(key, DES.MODE_CFB, iv)
    plaintext = cipher.decrypt(ciphertext)
    return plaintext

def main():
    mode = input("Select mode (ECB, CBC, CFB): ").upper()
    data = input("Enter plain text: ").encode()
    key = input("Enter key (8 bytes): ").encode()
    #iv = get_random_bytes(8)  # Initialization vector for CBC and CFB modes
    iv = input("Enter initialization vector for CBC and CFB modes (8 bytes): ").encode()

    if len(key) != 8:
        print("Key must be 8 bytes long.")
        return

    if mode == "ECB":
        ciphertext = encrypt_ecb(data, key)
        decrypted_text = decrypt_ecb(ciphertext, key)
    elif mode == "CBC":
        ciphertext = encrypt_cbc(data, key, iv)
        decrypted_text = decrypt_cbc(ciphertext, key, iv)
    elif mode == "CFB":
        ciphertext = encrypt_cfb(data, key, iv)
        decrypted_text = decrypt_cfb(ciphertext, key, iv)
    else:
        print("Invalid mode selected.")
        return

    print("Ciphertext:", ciphertext.hex())
    print("Decrypted text:", decrypted_text.decode())

if __name__ == "__main__":
    main()
