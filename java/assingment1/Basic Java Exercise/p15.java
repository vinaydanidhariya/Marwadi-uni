// (15) Write a Java Program to enter a no. and check it is prime or not?
// Input: 7
// Output: 7 is prime
// Input: 8
// Output: 8 is not prime
import java.util.Scanner;
public class p15
{
    public static void main(String args[])
    {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a no. to check it is prime or not");
        int n = sc.nextInt();
        int count = 0;
        for(int i=1; i<=n; i++)
        {
            if(n%i == 0)
            {
                count++;
            }
        }
        if(count == 2)
        {
            System.out.println(n+" is prime");
        }
        else
        {
            System.out.println(n+" is not prime");
        }
    }
}