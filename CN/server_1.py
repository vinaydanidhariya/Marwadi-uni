import socket 
HOST = ''   
PORT = 8090
server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM) 
server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1) 
server_socket.bind((HOST, PORT)) 
server_socket.listen(5) 
print('Server listening on {}:{}'.format(HOST, PORT)) 
client_socket, client_address = server_socket.accept() 
print('Accepted connection from {}:{}'.format(client_address[0], client_address[1])) 
while True: 
    data = client_socket.recv(1024).decode() 
    if not data: 
        break 
    print('Received message: {}'.format(data)) 
    response = input('Enter a response: ') 
    client_socket.sendall(response.encode()) 
print('Closing connection') 
client_socket.close()
