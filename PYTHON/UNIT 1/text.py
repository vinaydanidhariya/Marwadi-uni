var1=1
var2=0

# try:
#     print(var1/var2)
# except Exception as inst:
#     print(type(inst))    # the exception type
#     print(inst.args)     # arguments stored in .args
#     print(inst)          # __str__ allows args to be printed directly
   

class InvalidAgeException(Exception):

    def __init__(self, message="Error : Age 18 Is required"):
        self.message = message
        super().__init__(self.message)

try:
    age=int(input("ENTER AGE : "))
    if(age<=18):
        raise InvalidAgeException
except Exception as e:
    print(e)
    print(e.args)
finally:
    print('Goodbye, world!')





