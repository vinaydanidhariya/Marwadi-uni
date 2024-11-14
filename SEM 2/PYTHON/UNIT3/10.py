class Number:
    def __init__(self, value):
        self.value = value

    def add(self, other):
        if isinstance(other, Number):
            return self.value + other.value
        else:
            return NotImplemented

    def sub(self, other):
        if isinstance(other, Number):
            return self.value - other.value
        else:
            return NotImplemented


num1 = Number(5)
num2 = Number(3)

result_add = num1 + num2
print("Addition result:", result_add)

result_sub = num1 - num2
print("Subtraction result:", result_sub)

# output:
# Addition result: 8
# Subtraction result: 2
