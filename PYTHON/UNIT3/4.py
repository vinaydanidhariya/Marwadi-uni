class Company:
    def __init__(self, name):
        self.name = name
        self.employees = []

    def add_employee(self, employee_name):
        employee = self.Employee(employee_name)
        self.employees.append(employee)

    class Employee:
        def __init__(self, name):
            self.name = name

        def display_info(self):
            print("Employee:", self.name)


my_company = Company("TCS")

my_company.add_employee("Vinay")
my_company.add_employee("Dhruv")
my_company.add_employee("Rahul")

print(f"Employees of {my_company.name}:")
for employee in my_company.employees:
    employee.display_info()


#output:
# Employees of TCS:
# Employee: Vinay
# Employee: Dhruv
# Employee: Rahul