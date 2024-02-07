package other;
// Java program to find compound interest for
// given values.
import java.io.*;

class GFG
{
	public static void main(String args[])
	{
		double principal = 10000, rate = 5.00, time = 2;

		/* Calculate compound interest */
		double CI = principal *
					(Math.pow((1 + rate / 100), time));
		
		System.out.println("Compound Interest is "+ CI);
	}
}
// This code is contributed by Anant Agarwal.
