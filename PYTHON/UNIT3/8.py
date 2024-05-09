from abc import ABC, abstractmethod

class MyAbstractClass(ABC):
    @abstractmethod
    def my_method(self):
        pass

class MyClass(MyAbstractClass):
    def my_method(self):
        print("Implementation of my_method")

obj = MyClass()
obj.my_method()

#output
#Implementation of my_method