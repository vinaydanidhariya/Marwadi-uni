package MyShapePackage;

public class Circle extends Shape {
    double radius;
    public Circle(double radius) {
        this.radius = radius;
    }
    public void Area() {
        System.out.println("Area of Circle: " + PHI * radius * radius);
    }
}
