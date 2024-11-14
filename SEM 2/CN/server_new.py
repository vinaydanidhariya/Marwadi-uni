import socket
import selectors

host = '172.21.26.114'
port = 8090

server_socket = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
server_socket.setsockopt(socket.SOL_SOCKET,socket.SO_REUSEADDR,1)
server_socket.bind((host,port))
server_socket.listen(5)

print("Server Listen on {}:{}".format(host,port))

# Create a selector to monitor sockets
sel = selectors.DefaultSelector()

# Register the server socket with the selector
sel.register(server_socket, selectors.EVENT_READ, data=None)

while True:
    events = sel.select()
    for key, mask in events:
        if key.data is None:
            # Accept new connection
            client_socket, client_address = key.fileobj.accept()
            print(f'Accepted connection from {client_address[0]}, {client_address[1]}')
            client_socket.setblocking(False)
            # Register the new client socket with the selector
            sel.register(client_socket, selectors.EVENT_READ, data=client_socket)
        else:
            # Handle incoming data from client socket
            data = key.fileobj.recv(1024)
            if data:
                print(f'Received message from {key.fileobj.getpeername()[0]}, {key.fileobj.getpeername()[1]}: {data.decode()}')
                response = input('Enter a response: ')
                key.fileobj.sendall(response.encode())
            else:
                # Remove the client socket from the selector when the connection is closed
                print(f'Closed connection from {key.fileobj.getpeername()[0]}, {key.fileobj.getpeername()[1]}')
                sel.unregister(key.fileobj)

# Close the server socket
server_socket.close()