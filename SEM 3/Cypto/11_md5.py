import hashlib
import sys

str= input("enter the value  ")

str=bytes(str,'utf-8')
result= hashlib.md5(str);
print("the byte equivalent of hash is :", end="")
print(result.digest())

print("\r")
print("the size of output :",end="")
print(sys.getsizeof(result.digest()))

str= input("enter the value  ")

str=bytes(str,'utf-8')
result= hashlib.md5(str);
print("the byte equivalent of hash is :", end="")
print(result.digest())

print("\r")
print("the size of output :",end="")
print(sys.getsizeof(result.digest()))
