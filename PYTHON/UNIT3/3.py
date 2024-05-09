class MyClass:
    class_variable = 10

    def __init__(self, instance_variable):
        self.instance_variable = instance_variable

    @classmethod
    def class_method(cls):
        print("This is a class method")
        print("Class variable:", cls.class_variable)

    def instance_method(self):
        print("This is an instance method")
        print("Instance variable:", self.instance_variable)
MyClass.class_method()

obj = MyClass(20)

obj.instance_method()

#output
# This is a class method
# Class variable: 10        
# This is an instance method
# Instance variable: 20  