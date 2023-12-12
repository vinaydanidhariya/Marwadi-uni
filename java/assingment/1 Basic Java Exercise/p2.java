//(2) Write a Java Program to enter two nos. and perform all 5 mathematical operations
import java.util.*;

public class p2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter First Number :- ");
        String num1 = sc.nextLine();
        System.out.print("Enter Second Number :- ");
        String num2 = sc.nextLine();
        System.out.println("----------------------------------------------------");
        System.out.println("----------------------------------------------------");
        System.out.println("Addition of Two Number is " + (Integer.parseInt(num1) + Integer.parseInt(num2)));
        System.out.println("Subtraction of Two Number is " + (Integer.parseInt(num1) - Integer.parseInt(num2)));
        System.out.println("Multiplication of Two Number is " + (Integer.parseInt(num1) * Integer.parseInt(num2)));
        System.out.println("Division of Two Number is " + (Integer.parseInt(num1) / Integer.parseInt(num2)));
        System.out.println("module of Two Number is " + (Integer.parseInt(num1) % Integer.parseInt(num2)));
        System.out.println("----------------------------------------------------");
        System.out.println("----------------------------------------------------");
    }
    
}

// fix code in sorter mannner