class parent {
    String name = "hareshbhai";
    int creditCard = 1234564;

    // constructor overloading
    parent() {
        System.out.println("I am Constructor");
    }

    parent(int x) {
        System.out.println("I am Constructor with args " + x);
    }

    void display() {
        System.out.println("parent method");
        System.out.println("NAME OF PARENT " + name);
        System.out.println("creadit card " + name);
    }

}

class child extends parent {
    String name = "rahul";

    child() {
        // call super call constructor
        super(2);
    }

    void display() {
        super.display();
        System.out.println("child method");
        System.out.println("NAME OF CHILD " + name);
    }
}

public class constructor_overloading {
    public static void main(String[] args) {
        child c1 = new child();
        c1.display();
    }
}
