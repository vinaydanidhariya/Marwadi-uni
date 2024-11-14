import hashlib

pass1=input("enter the password ")
text_file=open("hello","wb")
pass1=bytes(pass1,"utf-8")
result=hashlib.md5(pass1)
text_file.write(result.digest())
print(result.digest())
text_file.close()
print(" Password hash stored ")
text_file=open("hello","rb")
newpass=input("enter the password again ")
content=text_file.read()
#print(content)
#digest=hashlib.md5("hello".encode("utf-8")).digest()
#print(digest)
#np1=hashlib.sha1(newpass.encode())
#np1=result.hexdigest()
np1=bytes(newpass,"utf-8")
np1=hashlib.md5(np1)
np1=np1.digest()
print(np1)

if content==np1:
    print("login succesfully ")
else:
    print("login denied ")
