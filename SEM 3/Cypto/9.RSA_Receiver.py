'''
Q.9 Implement a stand-alone sender receiver
program in which Sender encrypts a given text
message entered from keyboard using RSA
public key of Receiver and sends it to Receiver.
Receiver Decrypts the cipher-text using his own
RSA Private key and display the decrypted
contents on screen. Use Appropriate
package/Library for RSA.
'''

#pip install cryptography
from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.primitives.asymmetric import rsa
from cryptography.hazmat.primitives.asymmetric.padding import OAEP, MGF1
from cryptography.hazmat.primitives import hashes  # Add this import

def receiver():
    # Load the receiver's private key
    with open('receiver_private.pem', 'rb') as f:
        receiver_private_key = serialization.load_pem_private_key(
            f.read(),
            password=None
        )

    # Load the encrypted message
    with open('encrypted_message.bin', 'rb') as f:
        ciphertext = f.read()

    # Decrypt the message using RSA private key with OAEP padding
    plaintext = receiver_private_key.decrypt(
        ciphertext,
        OAEP(
            mgf=MGF1(algorithm=hashes.SHA256()),  # Corrected import
            algorithm=hashes.SHA256(),  # Corrected import
            label=None
        )
    )

    print("Decrypted message:", plaintext.decode())

if __name__ == "__main__":
    receiver()
