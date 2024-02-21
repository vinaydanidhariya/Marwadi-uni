#local variable
def local_v():

    # local variable
    message = 'Hello Dhruv'
    
    print('Local', message)

local_v()
print(message)
#Output
#Local Hello Dhruv
#NameError: name 'message' is not defined

# declare global variable
message = 'Hello Vinay'

def Global_v():
    print('Local', message)

Global_v()
print('Global', message)


#Output
#Local Hello Vinay
#Global Hello Vinay


#nonlocal variables
def outer():
    message="Local"

    def inner():
        nonlocal message
        print("inner:",message)

    inner()
    print("outer:",message)

outer()

#output
#inner: Local
#outer: Local






