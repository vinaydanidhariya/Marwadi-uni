// 13. Create a package named MyDataPackage which consist of following
// classes. A Class named Person which store information like first
// name,middle name,last name, address ,phone no. that have
// appropriate getPerson() and putPerson() method for getting and
// printing data.
//  A class named Student which inherits Person class. also
// add information like institute name, degree . it also have getStud() and
// putStud() method. 
// a class Employee which inherits Person class also
// add information like Designation and salary. The class should also have
// getEmp() and putEmp() methods. now out side package create main
// class that create object of Employee and student class and call all
// appropriate method.
// (Note : In all get Method data should be asked by user input)

import MyEmpPackage.Employee;
import MyDataPackage.Person;
import MyDataPackage.Student;

public class ex13package {
    public static void main(String[] args) {
        Employee emp = new Employee();w
        emp.getData();
        emp.putData();
        Person per = new Person();
        per.getPerson();
        System.out.println("Person Details: ");
        per.putPerson();
        Student stud = new Student();
        stud.getStud();
        System.out.println("Student Details: ");
        stud.putStud();
    }
}