from abc import ABC, abstractmethod
import math

class Shape(ABC):
    @abstractmethod
    def calculate_area(self):
        pass

class Circle(Shape):
    def __init__(self, radius):
        self.radius = radius
    
    def calculate_area(self):
        return math.pi * self.radius**2
    
circle = Circle(5)
print("Area of circle:", circle.calculate_area())


# output
# Area of circle: 78.53981633974483