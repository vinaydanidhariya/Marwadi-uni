# lamba function
num1 = int(input("ENTER NO 1 ")) 
num2 = int(input("ENTER NO 2 "))
op = input("Enter operation which want to perfor like + - * / ") 


def arithmetic(num1,num2,op):
    if op == '+':
        res = (lambda num1, num2 : num1 + num2)
        return res(num1,num2) 
    elif op == '-':
        res = (lambda num1, num2 : num1 - num2)
        return res(num1,num2) 
    elif op == '*':
        res = (lambda num1, num2 : num1 * num2)
        return res(num1,num2) 
    elif op == '/':
        if num2 != 0:
                res = (lambda num1, num2 : num1 / num2)
                return res(num1,num2) 
        else:
            return "Error: Division by zero"
    else:
        return "Invalid operator"


result = arithmetic(num1,num2,op)

print(f"Result: {result}")



    