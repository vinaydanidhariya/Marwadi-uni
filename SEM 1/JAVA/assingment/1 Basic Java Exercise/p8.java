import java.util.Scanner;

public class p8 {
    public static void main(String[] args) {
        float sum = 0, num = 0, n = 10;
        Scanner sc = new Scanner(System.in);
        for (int i = 0; i < n; i++) {
            System.out.println("Enter Number" + (i + 1));
            num = sc.nextFloat();
            sum += num;
        }
        System.out.println("sum is " + sum);
        System.out.println("Average is " + (sum / n));
        sc.close(); 
    }
}
