import java.util.Scanner;

class p11 {
    public static void main(String args[]) {
        System.out.println("Enter a digit: ");
        Scanner sc = new Scanner(System.in);
        int digit = sc.nextInt();
        int sum = 0;
            
        while (digit > 0) {
            int lastDigit = digit % 10;
            sum += lastDigit;
            digit /= 10;
        }
        
        System.out.println("Sum of digit is: " + sum);
    }
}