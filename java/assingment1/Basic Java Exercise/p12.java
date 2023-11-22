// (12) Write a Java Program to enter a no. and find its reverse
import java.util.Scanner;   
public class p12
{
    public static void main(String args[])
    {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a no. to find its reverse");
        int n = sc.nextInt();
        int rev = 0;
        while(n>0)
        {
            int rem = n%10;
            rev = rev*10 + rem;
            n = n/10;
        }
        System.out.println("Reverse of the no. is "+rev);
    }
}