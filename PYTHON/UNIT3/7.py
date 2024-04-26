class A:
    def display(self):
        print("Class A")


class B(A):
    def display(self):
        print("Class B")


class C(A):
    def display(self):
        print("Class C")


class D(B, C):
    pass


print("Method Resolution Order (MRO) for class D:")
print(D.mro())

obj = D()
obj.display()

#output:
# Method Resolution Order (MRO) for class D:
# [<class '__main__.D'>, <class '__main__.B'>, <class '__main__.C'>, <class '__main__.A'>, <class 'object'>]     
# Class B