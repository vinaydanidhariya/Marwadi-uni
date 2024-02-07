// create one class having variable count (static) 
// employee name,
// emp department,
// employee city
// create three method add employee, display employee and one static method change  to change value of count variable you have to give output total num of employee created

import java.util.Scanner;

class Employee {
    String EmpName;
    String EmpDepartment;
    String EmpCity;
    static Integer count = 0;

    Employee() {
        count++;
    }

    Employee(String empName, String empDepartment, String empCity) {
        EmpName = empName;
        EmpDepartment = empDepartment;
        EmpCity = empCity;
        count++;
    }

    void addEmployee() {
        Scanner sc = new Scanner(System.in);
        System.out.println("ENTER EMP NAME : ");
        String EmpName = sc.nextLine();
        this.EmpName = EmpName;

        System.out.println("ENTER DEPARTMENT NAME : ");
        String EmpDepartment = sc.nextLine();
        this.EmpDepartment = EmpDepartment;

        System.out.println("ENTER CITY NAME : ");
        String EmpCity = sc.nextLine();
        this.EmpCity = EmpCity;
    }

    void empDisplay() {
        System.out.println("----------------------------------------------");
        System.out.println("NAME : " + this.EmpName);
        System.out.println("DEPARTMENT NAME : " + this.EmpDepartment);
        System.out.println("CITY NAME : " + this.EmpCity);
        System.out.println("----------------------------------------------");
    }

    void change(int value) {
        count = value;
    }
}

class usageStatic {
    public static void main(String[] args) {
        // Employee emp1 = new Employee("rahul", "html", "rajkot");
        // Employee emp2 = new Employee("dhulo", "java", "rajkot");
        // Employee emp3 = new Employee("jogiya", "c++", "junagadh");
        Employee emp1 = new Employee();
        emp1.addEmployee();
        emp1.empDisplay();

        Employee emp2 = new Employee();
        emp2.addEmployee();
        emp2.empDisplay();

        // Employee emp3 = new Employee();
        // emp3.addEmployee();
        // emp3.empDisplay();

        System.out.println(Employee.count);
        emp1.change(12);
        System.out.println("Change value count :- " + Employee.count);
    }
}
