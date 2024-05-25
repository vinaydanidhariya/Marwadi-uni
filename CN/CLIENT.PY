import socket
hostname = 'localhost'
port = 12345

client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

client_socket.connect((hostname, port))
print("Connected to server")
while True:
    message = input("Enter message: ")
    client_socket.send(message.encode())
    if message == 'exit':
        break
    data = client_socket.recv(1024).decode()
    print('Received from server: ' + data)
    
client_socket.close()