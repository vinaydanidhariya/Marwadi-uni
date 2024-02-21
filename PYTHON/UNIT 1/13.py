# map filter and reduce

lst = [10,20,3,40,62,69,78,45,36]

def sqrt(a):
    return a*a

new_lst = map(sqrt,lst)
print(list(new_lst))

# filter
def enen(x):
    if x%2==0:
        return x
    
new_lst = filter(enen,lst)
print(list(new_lst))

# reduce



