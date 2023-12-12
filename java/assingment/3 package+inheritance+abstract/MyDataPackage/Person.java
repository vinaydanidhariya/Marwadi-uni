package MyDataPackage;
// A Class named Person which store information like first
// name,middle name,last name, address ,phone no. that have
// appropriate getPerson() and putPerson() method for getting and
// printing data.
public class Person {
    String firstName;
    String middleName;
    String lastName;
    String address;
    String phoneNo;
    public void getPerson() {
        System.out.println("Enter First Name: ");
        firstName = System.console().readLine();
        System.out.println("Enter Middle Name: ");
        middleName = System.console().readLine();
        System.out.println("Enter Last Name: ");
        lastName = System.console().readLine();
        System.out.println("Enter Address: ");
        address = System.console().readLine();
        System.out.println("Enter Phone No: ");
        phoneNo = System.console().readLine();
    }
    public void putPerson() {
        System.out.println("First Name: " + firstName);
        System.out.println("Middle Name: " + middleName);
        System.out.println("Last Name: " + lastName);
        System.out.println("Address: " + address);
        System.out.println("Phone No: " + phoneNo);
    }
}
