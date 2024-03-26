import socket
host = 'localhost'
port = 8090

client_socket = socket.socket(socket.AF_INET,socket.SOCK_STREAM)

client_socket.connect((host,port))
print("Connected To {}".format(host,port))
while True:
    message = input('Enter A message :')
    client_socket.sendall(message.encode())
    data = client_socket.recv(1024).decode()
    print(f'Received Response :{format(data)}')

print('closing Connection ')
client_socket.close()