// 2. Create a class called BasicShape that have method display() in which it
// display message as basic shape and create circle class that extends
// BasicShape that have method display() that display message as this is circle.
// create class polygon that extends BasicShape that have method display() that
// display message as this is polygon. create another class Ellipse that extends
// Basic Shape that display Message as This is Ellipse. now create object of 3
// subclass call all methods as well as super class method without creating
// object of super class.

class BasicShape {
    void display() {
        System.out.println("BasicShape Called class");
    };
}

class Circle extends BasicShape {
    void superMethod() {
        System.out.println("circle Called class");
        super.display();
    }

    void display() {
        System.out.println("circle Called class");
    }

    public void Area() {
    };
}

class Polygon extends BasicShape {
    void superMethod() {
        System.out.println("superMethod polygon Called class");
        super.display();
    }

    void display() {
        System.out.println("polygon Called class");
    };
}

class Ellipse extends BasicShape {
    void superMethod() {
        System.out.println("Ellipse Called class");
        super.display();
    }

    void display() {
        System.out.println("Ellipse Called class");
    };
}

public class ex2 {
public static void main(String[] args) {
Circle circle1 = new Circle();
circle1.superMethod();
Polygon polygon1 = new Polygon();
polygon1.superMethod();
Ellipse ellipse1 = new Ellipse();
ellipse1.superMethod();
}
}