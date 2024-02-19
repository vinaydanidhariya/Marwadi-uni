
def arithmetic(num1, num2, op):
    if op == '+':
        return num1 + num2
    elif op == '-':
        return num1 - num2
    elif op == '*':
        return num1 * num2
    elif op == '/':
        if num2 != 0:
            return num1 / num2
        else:
            return "Error: Division by zero"
    else:
        return "Invalid operator"

num1 = int(input("ENTER NO 1 ")) 
num2 = int(input("ENTER NO 2 "))
op = input("Enter operation which want to perfor like + - * / ") 

result = arithmetic(num1,num2,op)

print(f"Result: {result}")

# ENTER NO 1 20
# ENTER NO 2 30
# Enter operation which want to perfor like + - * / +
# Result: 50
