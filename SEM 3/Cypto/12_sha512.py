import hashlib

str="abhaydodiya"

result=hashlib.sha512(str.encode())

print(result.hexdigest())
print("\r")
result=hashlib.sha1(str.encode())

print(result.hexdigest())
