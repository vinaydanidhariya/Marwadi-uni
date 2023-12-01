package MyShapePackage;

abstract class Shape {
    final double PHI = 3.14;
    abstract void Area();
}

class Rectangle extends Shape {
    double length;
    double breadth;
    Rectangle(double length, double breadth) {
        this.length = length;
        this.breadth = breadth;
    }
    void Area() {
        System.out.println("Area of Rectangle: " + length * breadth);
    }
}

class Circle extends Shape {
    double radius;
    Circle(double radius) {
        this.radius = radius;
    }
    void Area() {
        System.out.println("Area of Circle: " + PHI * radius * radius);
    }
}