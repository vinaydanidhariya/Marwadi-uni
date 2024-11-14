from abc import ABC, abstractmethod

class AbstractClass(ABC):
    @abstractmethod
    def method1(self):
        pass
    
    @abstractmethod
    def method2(self):
        pass

class ConcreteClass(AbstractClass):
    def method1(self):
        print("Implementation of method1")
    
    def method2(self):
        print("Implementation of method2")

obj = ConcreteClass()
obj.method1()
obj.method2()

# output:
# Implementation of method1
# Implementation of method2