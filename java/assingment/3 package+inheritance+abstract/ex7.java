// 7. Create abstract class person that have two data member name and
// gender as String. That have parameterized constructor in which two
// parameter is there one for name other for gender assign that value to
// class instance variable. It also has abstract method work and also has
// display method that will print name and gender. Create another class
// Employee that extends Person that have one data member empId as
// integer in that constructor it have 3 parameters name, gender and
// empId now assign name and gender two super class instance variable
// using super keyword and id to current class instance variable. it
// override work method in which check if empId is equals to 0 then give
// message that employee is not working else Working as Employee.
// Create main class create object of Employee provide name, gender and
// employee id as 0. Now create other object provide name, gender and
// employee id as any id and call work method from both objects. Now
// call display method and see the output.


abstract class Person {
    String name;
    String gender;

    Person(String name, String gender) {
        this.name = name;
        this.gender = gender;
    }

    abstract void work();

    void display() {
        System.out.println("Name: " + name);
        System.out.println("Gender: " + gender);
    }
}

class Employee extends Person {
    int empId;

    Employee(String name, String gender, int empId) {
        super(name, gender);
        this.empId = empId;
    }

    @Override
    void work() {
        if (empId == 0) {
            System.out.println("Employee is not working.");
        } else {
            System.out.println("Working as Employee.");
        }
    }
}

public class ex7 {
    public static void main(String[] args) {
        Employee employee1 = new Employee("John", "Male", 0);
        Employee employee2 = new Employee("Alice", "Female", 12345);

        employee1.work();
        employee2.work();

        System.out.println("Employee 1 Details:");
        employee1.display();
        System.out.println();

        System.out.println("Employee 2 Details:");
        employee2.display();
    }
}
