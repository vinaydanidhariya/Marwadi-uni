import socket

hostname = 'localhost'

port = 12345

server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

server_socket.bind((hostname, port))

server_socket.listen(1)

print("Server started")

client_socket, client_address = server_socket.accept()

print("Accepted connection")


while True:
    data = client_socket.recv(1024).decode()
    print('Received from client: ' + data)
    if data == 'exit':
        break
    message = input("Enter message: ")
    client_socket.send(message.encode())