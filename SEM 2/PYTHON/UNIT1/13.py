# map filter and reduce
#map
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
from functools import reduce
def multiply(x, y):
    return x + y
product = reduce(multiply, lst)
print("Product of the numbers:", product)

#output
#map
#[100, 400, 9, 1600, 3844, 4761, 6084, 2025, 1296]
#filter
#[10, 20, 40, 62, 78, 36]
#reduce
#Product of the numbers: 363






