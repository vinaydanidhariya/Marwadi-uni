class Student:
    def __init__(self, rollno, name, gender, age):
        self.rollno = rollno
        self.name = name
        self.gender = gender
        self.age = age

    def display_student_info(self):
        print("Student Info:")
        print("Roll No:", self.rollno)
        print("Name:", self.name)
        print("Gender:", self.gender)
        print("Age:", self.age)


class Course(Student):  # Inheriting from Student class
    def __init__(self, rollno, name, gender, age, coursename, duration, fee):
        super().__init__(rollno, name, gender, age)  # Calling superclass constructor
        self.coursename = coursename
        self.duration = duration
        self.fee = fee

    def display_course_info(self):
        super().display_student_info()  # Calling superclass method
        print("Course Info:")
        print("Course Name:", self.coursename)
        print("Duration:", self.duration)
        print("Fee:", self.fee)


student1 = Course(10, "Dhruv", "Male", 20, "Python Programming", "3 months", "3000")
student1.display_course_info()


#output:
# Student Info:
# Roll No: 10
# Name: Dhruv
# Gender: Male
# Age: 20
# Course Info:
# Course Name: Python Programming
# Duration: 3 months
# Fee: 3000