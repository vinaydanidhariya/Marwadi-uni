import socket
host = '172.21.26.114'
port = 8090

server_socket = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
server_socket.setsockopt(socket.SOL_SOCKET,socket.SO_REUSEADDR,1)


server_socket.bind((host,port))
server_socket.listen(5)

print("Server Listen on {}".format(host,port))

client_socket,client_address= server_socket.accept()

print(f'Acceept connection from {client_address[0],client_address[1]}')


while True:
    data = client_socket.recv(1024).decode()
    if not data:
        break
    print(f'received message {format(data)}')
    response = input('Enter A Response : ')
    client_socket.sendall(response.encode())
    
print("Clossing Conn ")
client_socket.close()