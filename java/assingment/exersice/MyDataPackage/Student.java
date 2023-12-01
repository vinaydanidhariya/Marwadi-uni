package MyDataPackage;
// A class named Student which inherits Person class. also
// add information like institute name, degree . it also have getStud() and
// putStud() method.
public class Student extends Person {
    String instituteName;
    String degree;
    public void getStud() {
        System.out.println("Enter Institute Name: ");
        instituteName = System.console().readLine();
        System.out.println("Enter Degree: ");
        degree = System.console().readLine();
    }
    public void putStud() {
        System.out.println("Institute Name: " + instituteName);
        System.out.println("Degree: " + degree);
    }
}