// Write a Java Program to enter a no. and check it is palindrome or not?
// Input: 121
// Output: 121 is palindrome
// Input: 123
// Output: 123 is not palindrome
import java.util.Scanner;
public class p13
{
    public static void main(String args[])
    {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a no. to check it is palindrome or not");
        int n = sc.nextInt();
        int temp = n;
        int rev = 0;
        while(n>0)
        {
            int rem = n%10;
            rev = rev*10 + rem;
            n = n/10;
        }
        if(temp == rev)
        {
            System.out.println(temp+" is palindrome");
        }
        else
        {
            System.out.println(temp+" is not palindrome");
        }
    }
}