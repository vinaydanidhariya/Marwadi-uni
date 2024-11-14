# 1) Write a program to create a simple class with 2 methods and execute
# both methods

class Student:
    university_name = 'Marwadi University'
    def setData(self,Rno,Name,dept):
        self.Name = Name
        self.Rno = Rno
        self.dept = dept
    def getData(self):
        print(f"Student Name : {self.Name}")
        print(f"Roll NO : {self.Rno}")
        print(f"Department : {self.dept}")
        print(f"University Name : {self.university_name}")


Student1 = Student() 

Student1.setData(1,'vinay','mca') 
Student1.getData()
# Student Name : vinay
# Roll NO : 1
# Department : mca
# University Name : Marwadi University   