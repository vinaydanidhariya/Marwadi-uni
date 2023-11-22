//9 Write a Java Program to enter 10 Nos. and find Maximum out of it without using array.
import java.util.Scanner;

public class p9 {
    public static void main(String[] args) {
        float num, max = 0, n = 10;
        Scanner sc = new Scanner(System.in);
        for (int i = 0; i < n; i++) {
            System.out.println("Enter Number " + (i + 1));
            num = sc.nextFloat();
            if (max < num) {
                max = num;
            }
        }
        System.out.println("max is " + max);
    }
}
