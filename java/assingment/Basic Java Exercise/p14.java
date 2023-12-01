// (14) Write a Java Program to enter a no. and check it is Armstrong or not?
// Input: 153
// Output: 153 is Armstrong
// Input: 123
// Output: 123 is not Armstrong
import java.util.Scanner;
public class p14
{
    public static void main(String args[])
    {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a no. to check it is Armstrong or not");
        int n = sc.nextInt();
        int temp = n;
        int sum = 0;
        while(n>0)
        {
            int rem = n%10;
            sum = sum + (rem*rem*rem);
            n = n/10;
        }
        if(temp == sum)
        {
            System.out.println(temp+" is Armstrong");
        }
        else
        {
            System.out.println(temp+" is not Armstrong");
        }
    }
}