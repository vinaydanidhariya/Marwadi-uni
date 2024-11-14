import socket
host = 'localhost'
port = 8090

s= socket.socket(socket.AF_INET,socket.SOCK_STREAM)

s.connect((host,port))
message=s.recv(1024).decode()
print(f"Received from server:{message}")
data="Hello,server"
s.send(data.encode())
s.close()
