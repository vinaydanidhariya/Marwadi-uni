#local variable
def local_v():

    # local variable
    message = 'Hello Dhruv'
    
    print('Local', message)

local_v()

print(message)

# declare global variable
message = 'Hello Vinay'

def Global_v():
    print('Local', message)

Global_v()
print('Global', message)


def local_v():

    # local variable
    message = 'Hello Dhruv'
    
    print('Local', message)

local_v()


#nonlocal variables
def outer():
    message="Local"

    def inner():
        nonlocal message
        print("inner:",message)

    inner()
    print("outer:",message)

outer()







