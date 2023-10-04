import java.util.Scanner;

public class E_find_max_10_without_array {
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
