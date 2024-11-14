#pip install Pillow
from PIL import Image

from PIL import Image

# Function to encode data into an image
def encode_image(image_path, data_to_hide):
    image = Image.open(image_path)

    # Convert data to binary
    binary_data = ''.join(format(ord(char), '08b') for char in data_to_hide)

    if len(binary_data) > image.width * image.height * 4:
        raise Exception("Data is too large to be encoded in the image.")

    # Encode the binary data into the image
    data_index = 0
    for y in range(image.height):
        for x in range(image.width):
            pixel = list(image.getpixel((x, y)))

            if data_index < len(binary_data):
                # Modify the least significant bit of each color component
                for i in range(3):  # Loop through RGB components
                    if data_index < len(binary_data):
                        pixel[i] = pixel[i] & ~1 | int(binary_data[data_index])
                        data_index += 1

                # Put the modified pixel back into the image
                image.putpixel((x, y), tuple(pixel))
            else:
                break

        if data_index >= len(binary_data):
            break

    # Save the new image with hidden data
    image.save("encoded_image.png")
    print("Data encoded successfully.")

# Function to decode data from an image
def decode_image(encoded_image_path):
    encoded_image = Image.open(encoded_image_path)
    binary_data = ""
    decoded_data = ""  # Initialize the variable here

    for y in range(encoded_image.height):
        for x in range(encoded_image.width):
            pixel = list(encoded_image.getpixel((x, y)))

            # Get the least significant bit of each color component
            for i in range(3):  # Loop through RGB components
                binary_data += str(pixel[i] & 1)

            if len(binary_data) >= 8:
                byte = binary_data[:8]
                binary_data = binary_data[8:]
                if byte == '00000000':  # Check for null terminator indicating end of the message
                    break
                else:
                    decoded_data += chr(int(byte, 2))

        if len(binary_data) >= 8:
            break  # Break the outer loop if null terminator is found

    return decoded_data

# Example usage
# Encode data into the image
data_to_hide = "This is a hidden message!"
encode_image("original_image.png", data_to_hide)

# Decode data from the encoded image
decoded_data = decode_image("encoded_image.png")
print("Decoded data:", decoded_data)
