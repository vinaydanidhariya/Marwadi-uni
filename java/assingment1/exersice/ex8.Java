// 8. Create interface named Printable that have print() method as no
// return type. create another interface named Showable that have
// show() method as no return type. Create class called InterfaceEx that
// implements both interface. Override Method print() and give message
// "Hello". also override method show() and give message "Welcome".
// now create main class create object of InterfaceEx class and call both
// method.
interface Printable {
    void print();
}

interface Showable {
    void show();
}

class InterfaceEx implements Printable, Showable {
    @Override
    public void print() {
        System.out.println("Hello");
    }

    @Override
    public void show() {
        System.out.println("Welcome");
    }
}

public class Main {
    public static void main(String[] args) {
        InterfaceEx obj = new InterfaceEx();
        obj.print();
        obj.show();
    }
}
