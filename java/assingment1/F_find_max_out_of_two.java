import java.util.Scanner;

class F_find_max_out_of_two {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter First Number :- ");
        float num1 = sc.nextFloat();

        System.out.println("Enter Second Number :- ");
        float num2 = sc.nextFloat();
        if (num1 > num2) {
            System.out.println("First Number is Maximum");
        } else {
            System.out.println("Second Number is Maximum");
        }
    }
}