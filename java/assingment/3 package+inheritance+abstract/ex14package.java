// 14. Create a package named MyShapePackage which consists of
// following classes.
// An abstract class named Shape which stores information of final
// variable PHI. 
// The class should also contain abstract method like Area. A
// class named Rectangle which inherits Shape class. Also add information
// like length and breadth. 
// The class should also contain parameterized
// constructor named Rectangle (length, Breadth). Also implement
// method Area() and define it in the class.
// A class named Circle which
// inherits Shape class. Also add information like radius. The class should
// also contain parameterized constructor named Circle (radius). Also
// implement method Area() and define it in the class. Now create main
// class outside package and do appropriate task.
// (Note : In all get Method data should be asked by user input)

import MyShapePackage.Rectangle;
import MyShapePackage.Circle;

import java.util.Scanner;

public class ex14package {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter Length of Rectangle: ");
        double length = sc.nextDouble();
        System.out.println("Enter Breadth of Rectangle: ");
        double breadth = sc.nextDouble();
        Rectangle rect = new Rectangle(length, breadth);
        rect.Area();

        System.out.println("Enter Radius of Circle: ");
        double radius = sc.nextDouble();

        Circle circ = new Circle(radius);
        circ.Area();
    }
}



// Output:
// Enter Length of Rectangle:
// 10
// Enter Breadth of Rectangle:
// 20
// Area of Rectangle: 200.0
// Enter Radius of Circle:
// 10
// Area of Circle: 314.0


