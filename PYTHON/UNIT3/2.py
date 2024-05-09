class Student:
    university_name = 'Marwadi University'
    def setData(self,Rno,Name,dept,age,gender):
        self.Name = Name
        self.Rno = Rno
        self.dept = dept
        self.age = age
        self.gender = gender
    def getData(self):
        print(f"Student Name : {self.Name}")
        print(f"Roll NO : {self.Rno}")
        print(f"Department : {self.dept}")
        print(f"University Name : {self.university_name}")
        print(f" Age : { self.age}")
        print(f"Gender : { self.gender}")
        
        


Student1 = Student() 

Student1.setData(1,'vinay','mca',20,'MALE') 
Student1.getData()
# Student Name : vinay
# Roll NO : 1
# Department : mca
# University Name : Marwadi University
#  Age : 20
# Gender : MALE