import java.util.Scanner;

public class E_Result_of_subject {
    public static void main(String[] args) {
        System.out.println("Enter subject marks out of 100");
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter marks of English");
        float sub1 = sc.nextFloat();
        System.out.println("Enter marks of Gujarati");
        float sub2 = sc.nextFloat();
        System.out.println("Enter marks of hindi");
        float sub3 = sc.nextFloat();
        System.out.println("Sum of three subject is " + (sub1 + sub2 + sub3));
        System.out.println("Average of three subject is " + (sub1 + sub2 + sub3) / 3);
        System.out.println("Percentage of three subject is " + (sub1 + sub2 + sub3) * 100 / 300);
        if (sub1 > 34 && sub2 > 34 && sub3 > 34) {
            System.out.println("Pass");
        } else {
            System.out.println("Fail");
        }
    }
}
