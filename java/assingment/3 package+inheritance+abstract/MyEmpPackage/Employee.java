package MyEmpPackage;

import java.util.Scanner;

// 12. Create a package called MyEmpPackage which consist of class
// Employee. it have data members like empno,firstname, middle
// name,lastname, address, designation and salary. It have getData() and
// putData() method which will store value in instance variable from user
// input and print that value respectively. outside package create main
// class called MainEmp and call both method using object.
public class Employee {
    int empNo, salary;
    String firstName, middleName, lastName, address, designation;

    public void getData() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter Employee Number :- ");
        empNo = sc.nextInt();
        System.out.println("Enter Salary :- ");
        salary = sc.nextInt();
        System.out.println("Enter FirstName :- ");
        firstName = sc.next();
        System.out.println("Enter middleName :- ");
        middleName = sc.next();
        System.out.println("Enter lastName :- ");
        lastName = sc.next();
        System.out.println("Enter Address :- ");
        lastName = sc.next();
        System.out.println("Enter Designation :- ");
        lastName = sc.nextLine();
    }
    
    public void putData() {
        // print that value respectively.
        System.out.println("Employee Number :- " + empNo);
        System.out.println("Salary :- " + salary);
        System.out.println("FirstName :- " + firstName);
        System.out.println("middleName :- " + middleName);
        System.out.println("lastName :- " + lastName);
        System.out.println("Address :- " + address);
        System.out.println("Designation :- " + designation);
    }
}
